import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart';

class ImageUploadsPage extends StatefulWidget {
  const ImageUploadsPage({Key? key}) : super(key: key);

  @override
  State<ImageUploadsPage> createState() => ImageUploadsPageState();
}

class ImageUploadsPageState extends State<ImageUploadsPage> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  File? _photo;
  final ImagePicker _picker = ImagePicker();
  List<XFile>? imageFiles;

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
      } else {
        log('No image selected.');
      }
    });
  }

  Future imgFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    setState(
      () {
        if (pickedFile != null) {
          _photo = File(pickedFile.path);
        } else {
          log('No image selected.');
        }
      },
    );
  }

  Future uploadFile() async {
    if (_photo == null) return;
    final fileName = basename(_photo!.path);
    final destination = 'files/$fileName';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      await ref.putFile(_photo!);
    } catch (e) {
      log('error occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showPicker(context);
              },
              child: Stack(
                children: [
                  SizedBox(
                    width: 300,
                    height: 200,
                    child: _photo != null
                        ? Image.file(
                            _photo!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          )
                        : Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                          ),
                  ),
                  Positioned(
                    top: 10,
                    right: 30,
                    child: InkWell(
                      child: const Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          _photo = null;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _photo != null
                ? () {
                    uploadFile();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Finish"),
                    ));
                  }
                : null,
            child: const Text('SUBMIT'),
          ),
          ActionChip(
              avatar: const CircleAvatar(
                backgroundColor: Color.fromARGB(0, 250, 250, 250),
                foregroundColor: Colors.black,
                child: Icon(Icons.delete),
              ),
              label: const Text('Delete'),
              clipBehavior: Clip.hardEdge,
              tooltip: 'Delete the item',
              onPressed: () {
                setState(() {
                  _photo = null;
                });
              }),
        ],
      ),
    );
  }

//  _photo != null ? uploadFile : null;
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Gallery'),
                  onTap: () {
                    imgFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    imgFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }
}

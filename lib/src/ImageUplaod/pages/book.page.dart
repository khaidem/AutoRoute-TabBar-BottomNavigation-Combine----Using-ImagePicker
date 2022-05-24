import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BooKPage extends StatefulWidget {
  const BooKPage({Key? key}) : super(key: key);

  @override
  State<BooKPage> createState() => _BooKPageState();
}

class _BooKPageState extends State<BooKPage> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:${imageFileList!.length}");
    setState(() {});
  }

  // Future<List<String>> uploadFiles(List _images) async {
  //   List<String> imagesUrls = [];

  //   _images.forEach((_image) async {
  //     StorageRefrence storageReference =
  //         FirebaseStorage.instance.ref().child('file/${_image.path}');
  //     StorageUploadTask uploadTask = storageReference.putFile(_image);

  //     imagesUrls.add(await (await uploadTask.onComplete).ref.getDownloadURL());
  //   });
  //   print(imagesUrls);
  //   return imagesUrls;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Multiple Images'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  selectImages();
                },
                child: const Text('Select Images'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('SUBMIT TO FIREBASE'),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: imageFileList!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.file(
                          File(imageFileList![index].path),
                          fit: BoxFit.cover,
                        );
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}

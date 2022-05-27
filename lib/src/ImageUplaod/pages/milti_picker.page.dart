import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultiPickerPage extends StatefulWidget {
  const MultiPickerPage({Key? key}) : super(key: key);

  @override
  State<MultiPickerPage> createState() => _MultiPickerPageState();
}

class _MultiPickerPageState extends State<MultiPickerPage> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imagePicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          //open button ----------------
          ElevatedButton(
            onPressed: () {
              openImages();
            },
            child: const Text("Pick Multi Image"),
          ),

          imagefiles != null
              ? Wrap(
                  children: imagefiles!.map((imageone) {
                    return Card(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.file(File(imageone.path)),
                      ),
                    );
                  }).toList(),
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
          ElevatedButton(
            onPressed: () {
              openImages();
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    ));
  }
}

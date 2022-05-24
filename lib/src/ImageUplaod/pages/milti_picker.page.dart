import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Multiple Image Picker Flutter"),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //open button ----------------
              ElevatedButton(
                  onPressed: () {
                    openImages();
                  },
                  child: Text("Open Images")),

              Divider(),
              Text("Picked Files:"),
              Divider(),

              imagefiles != null
                  ? Wrap(
                      children: imagefiles!.map((imageone) {
                        return Container(
                            child: Card(
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Image.file(File(imageone.path)),
                          ),
                        ));
                      }).toList(),
                    )
                  : Container()
            ],
          ),
        ));
  }
}

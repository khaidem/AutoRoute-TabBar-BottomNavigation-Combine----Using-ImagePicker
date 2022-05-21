
// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';

// class ImageUploadPage extends StatefulWidget {
//   const ImageUploadPage({Key? key}) : super(key: key);

//   @override
//   State<ImageUploadPage> createState() => _ImageUploadPageState();
// }

// class _ImageUploadPageState extends State<ImageUploadPage> {
//   PlatformFile? pickedFile;
//   UploadTask? uploadTask;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // TextFormField(
//               //   decoration: const InputDecoration(
//               //       border: OutlineInputBorder(),
//               //       labelText: 'Enter name',
//               //       hintText: 'Enter Name'),
//               // ),
//               // const SizedBox(
//               //   height: 5,
//               // ),
//               // TextFormField(
//               //   decoration: const InputDecoration(
//               //       border: OutlineInputBorder(),
//               //       labelText: 'Enter Address',
//               //       hintText: 'Enter Address'),
//               // ),
//               // const SizedBox(
//               //   height: 5,
//               // ),
//               if (pickedFile != null)
//                 Expanded(
//                   child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.blue),
//                       ),
//                       child: Image.file(
//                         File(
//                           pickedFile,
//                         ),
//                         width: double.infinity,
//                         fit: BoxFit.cover,
//                       )),
//                 ),

//               ElevatedButton(
//                 onPressed: () {
//                   selectedFile;
//                 },
//                 child: const Text('Selected File'),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     selectedFile;
//                   },
//                   child: const Text('Selected File')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future selectedFile() async {
//     final result = await FilePicker.platform.pickFiles(allowMultiple: false);
//     if (result == null) return;
//     setState(() {
//       pickedFile = result.files.first;
//     });
//   }

//   Future uploadFile() async {
//     final path = 'file/${pickedFile!.name}';
//     final file = File(path);
//     final ref = FirebaseStorage.instance.ref().child(path);
//     // uploadTask = ref.putFile(file);
//     // final snapshot = await uploadTask.whenComplete(() {});
//   }
// }

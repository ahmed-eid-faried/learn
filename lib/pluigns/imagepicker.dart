import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "ShantellSans",
      ),
      title: 'imagepicker',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final ImagePicker picker = ImagePicker();

  // final Future<XFile?> image =
  //     ImagePicker().pickImage(source: ImageSource.gallery);
  // final Future<XFile?> photo =
  //     ImagePicker().pickImage(source: ImageSource.camera);
  // final Future<List<XFile>> images = ImagePicker().pickMultiImage();

  // final Future<XFile?> videoc =
  //     ImagePicker().pickVideo(source: ImageSource.camera);
  // final Future<XFile?> videog =
  //     ImagePicker().pickVideo(source: ImageSource.gallery);
  // Future<void> getLostData() async {
  //   final LostDataResponse response = await picker.retrieveLostData();
  //   if (response.isEmpty) {
  //     return;
  //   }
  //   if (response.files != null) {
  //     for (final XFile file in response.files) {
  //       _handleFile(file);
  //     }
  //   } else {
  //     _handleError(response.exception);
  //   }
  // }
  late File image;
  final picker =
      ImagePicker(); //استدعاء للكائن المسئول عن تشغيل الكاميرا و المعرض
  uploadimage() async {
    //  دالة لعرض و تشغيل الكاميرا و تخزين الصورة عند الأنتهاء فى متغير
    var pickedimage = await ImagePicker().getImage(source: ImageSource.camera);
    //   if (pickedimage != null) {
    //     // image = pickedimage;
    //   } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("imagepicker"),
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(child: Text('imagepicker')),
              ElevatedButton(
                  onPressed: uploadimage, child: const Text('imagepicker')),
              image != null
                  ? Image.file(image)
                  : Text("please, choose your image or cupture it."),
            ],
          ),
        ),
      ),
    );
  }
}



//   VideoPlayerController? get controller => widget.controller;
//   bool initialized = false;

//   void _onVideoControllerUpdate() {
//     if (!mounted) {
//       return;
//     }
//     if (initialized != controller!.value.isInitialized) {
//       initialized = controller!.value.isInitialized;
//       setState(() {});
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     controller!.addListener(_onVideoControllerUpdate);
//   }

//   @override
//   void dispose() {
//     controller!.removeListener(_onVideoControllerUpdate);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (initialized) {
//       return Center(
//         child: AspectRatio(
//           aspectRatio: controller!.value.aspectRatio,
//           child: VideoPlayer(controller!),
//         ),
//       );
//     } else {
//       return Container();
//     }
//   }
// }
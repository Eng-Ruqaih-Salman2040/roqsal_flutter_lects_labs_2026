import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyHomePage_ImagePicker());
}

class MyHomePage_ImagePicker  extends StatelessWidget {
  const MyHomePage_ImagePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MultiImage Roq App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiImage_by_imagepicker_Roq_Ex(),
    );
  }
}

class MultiImage_by_imagepicker_Roq_Ex extends StatefulWidget {
  const MultiImage_by_imagepicker_Roq_Ex({Key? key}) : super(key: key);
  @override
  State<MultiImage_by_imagepicker_Roq_Ex> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MultiImage_by_imagepicker_Roq_Ex> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    print("Image List Length:" + imageFileList!.length.toString());
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Multiple Images Roq App'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  selectImages();
                },
                child: Text('Select Images '),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: imageFileList!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.file(File(imageFileList![index].path), fit: BoxFit.cover,);
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}

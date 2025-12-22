import 'dart:io';

import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';

class File_Read_Wrie_Roq extends StatelessWidget {

  Future<String> AppPath_roq() async {
    final path_roq = await getApplicationDocumentsDirectory();
    return path_roq.path;
  }
///////////////////////////// Fun return the file that we will use it to read and wtite
  Future<File> AppFile_roq() async {
    final file_roq = await AppFile_roq();
    return File('$file_roq/dart_roq.txt');
  }
  /////////////////////////Write to file ////////////////////
  Future<File> WriteFile(String data_roq)async
  {
    final file_roq = await AppFile_roq();
    return file_roq.writeAsString('$data_roq');
    /////////////////////Read from file ///////////////////////
  }
  Future<String> Readfile_roq() async {
    try {
      final file_read_roq = await (AppFile_roq());
      String data_roq = await (file_read_roq.readAsString());
      return data_roq;
    }
    catch (e) {
      return 'The file is not found!!!!!';
    }
  }

  /////////////////////////////////////////////////
  final TextEditingController input_roq = new TextEditingController();
  final TextEditingController output_roq = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("File App Roq"),
        ),
        body: Center(
            child: Column(
              children: [
                TextField(
                  controller: input_roq,
                  /*decoration: InputDecoration(
                labelText: "Enter Text to save",
              ),*/
                ),
                TextField(
                  controller: output_roq,
                  /*decoration: InputDecoration(
                  labelText: "The Text will loded hear",
                )*/
                ),
                ElevatedButton(
                  child: Text('save'),
                  onPressed: () async {
                    WriteFile(input_roq.text);
                  },
                ),
                ElevatedButton(
                  child: Text('Load'),
                  onPressed: () async {

                    output_roq.text = await Readfile_roq();

                    print("The text is :${output_roq.text}");
                  },
                ),
                Text("")
              ],
            )));
  }
}

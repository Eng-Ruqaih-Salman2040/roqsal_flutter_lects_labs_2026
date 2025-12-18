// main.dart
import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

/*void main() {
  runApp(MyApp());
}*/

class Read_Write_Internalfile_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RoqSal.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This will be displayed on the screen
   String _content="";

  // Find the Documents path
  Future<String> _getDirPath_funroq() async {
    final _dir = await getApplicationDocumentsDirectory();
    print("The path of file is : ${_dir.path}");
    return _dir.path;
  }

  // This function is triggered when the "Read" button is pressed
  Future<void> _readData_funroq() async {
    final _dirPath_roq = await _getDirPath_funroq();
    final _myFile_roq = File('$_dirPath_roq/data.txt');
    final _data_roq = await _myFile_roq.readAsString(encoding: utf8);
    setState(() {
      _content = _data_roq;
    });
  }

  // TextField controller
  final _textController = TextEditingController();
  // This function is triggered when the "Write" buttion is pressed
  Future<void> _writeData_funroq() async {
    final _dirPath_roq = await _getDirPath_funroq();

    final _myFile_roq = File('$_dirPath_roq/data.txt');
    // If data.txt doesn't exist, it will be created automatically

    await _myFile_roq.writeAsString(_textController.text);
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Roq App'),
      ),
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  labelText: 'Enter your name'),
            ),
            ElevatedButton(
              child: Text('Save to file'),
              onPressed: _writeData_funroq,
            ),
            SizedBox(
              height: 150,
            ),
            Text(
                _content != null
                    ? _content
                    : 'Press the button to load your name',
                style: TextStyle(fontSize: 24, color: Colors.pink)),
            ElevatedButton(
              child: Text('Read my name from the file'),
              onPressed: _readData_funroq,
            )
          ],
        ),
      ),
    );
  }
}
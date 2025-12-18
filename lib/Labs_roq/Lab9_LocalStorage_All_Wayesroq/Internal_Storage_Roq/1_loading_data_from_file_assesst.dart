// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';

void main() {
  runApp(Load_content_from_assestfile_Roq());
}

class Load_content_from_assestfile_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'file load roq',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String _data="";

  // This function is triggered when the user presses the floating button
  Future<void> _loadData() async {
    final String _loadedData =
    await rootBundle.loadString('assets_roq/assets_storage_offline/Roq_file.txt');
    setState(() {
      _data = _loadedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Load FileData from assest'),
      ),
      body: Center(
          child: Container(
              width: 300,
              child: Text(_data != null ? _data : 'Nothing to show',
                  style: TextStyle(fontSize: 24)))),
      floatingActionButton:
      FloatingActionButton(onPressed: _loadData, child: Icon(Icons.add)),
    );
  }
}
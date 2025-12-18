import 'package:flutter/material.dart';

void main() {
  runApp(TextButton_Roq());
}

class TextButton_Roq extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  const TextButton_Roq();
}

class _MyAppState extends State<TextButton_Roq> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('TextButton Roq Example'),
          ),
          body: Center(
              child: Column(children: <Widget>[
                TextButton(
                    child: Text('Basic Usage'),
                    onPressed: () {
                      print('Pressed');
                    }),
                TextButton.icon(
                    label: Text('TextButton withicon'),
                    icon: Icon(Icons.web),
                    onPressed: () {
                      print('Pressed');
                    }),
                TextButton(
                  child: Text('TextButton with Longpress'),
                  onPressed: () {
                    print('Pressed');
                  },
                  onLongPress: () {
                    print('Long press');
                  },
                ),
                TextButton(
                  child: Text('Setting TextButton Style'),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal,
                      side: BorderSide(color: Colors.green, width: 2),
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      shadowColor: Colors.red,
                      elevation: 10,
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontStyle: FontStyle.italic)),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
              ]))),    );  }}

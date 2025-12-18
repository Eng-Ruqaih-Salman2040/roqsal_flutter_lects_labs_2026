import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ElevatedButton_Roq_Demo());
  }
}
class ElevatedButton_Roq_Demo extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<ElevatedButton_Roq_Demo> {
  String msg = 'ElevatedButton Demo By Eng | Ruqaih Salman\n';
  bool n = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton Roq Demo'),
        ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    msg,
                    style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                  ),
                  ElevatedButton(
                    child: Text(
                      n ? "Click Here" : "Finshed",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () => n ? _changeText() : SystemNavigator.pop(),
//exit(0),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.yellow,
                      padding: EdgeInsets.all(8.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
  _changeText() {
    setState(() {
      if (msg.startsWith('E')) {
        msg = 'We have learned ElevatedButton';
      } else {
        msg = 'You have completed learning ElevatedButton';
        n = false;
      }
    });
  }
}
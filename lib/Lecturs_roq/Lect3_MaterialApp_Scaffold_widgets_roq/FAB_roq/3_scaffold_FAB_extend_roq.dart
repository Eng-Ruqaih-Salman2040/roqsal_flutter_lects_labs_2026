import 'package:flutter/material.dart';

void main() {
  runApp(FAB_Extend_Roq_App());
}

class FAB_Extend_Roq_App extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  const FAB_Extend_Roq_App();
}

class _MyAppState extends State<FAB_Extend_Roq_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("FAB_Extend"),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () => {}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () => {})
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () => {},
          elevation: 8,
          icon: Icon(Icons.save),
          label: Text("Save"),
        ),
      ),
    );
  }
}

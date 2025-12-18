import 'package:flutter/material.dart';

void main() {
  runApp(FAB_Baisc_Roq_App());
}

class FAB_Baisc_Roq_App extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

 const FAB_Baisc_Roq_App();
}

class _MyAppState extends State<FAB_Baisc_Roq_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FAB_Baisc"),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () => {}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () => {})
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigation),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () => {},
          elevation: 8,
        ),
      ),
    );
  }
}

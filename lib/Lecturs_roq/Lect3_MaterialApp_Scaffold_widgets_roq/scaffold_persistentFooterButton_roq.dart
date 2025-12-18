import 'package:flutter/material.dart';

class PersistentFooterButtons_Roq_App extends StatefulWidget {
  @override
  PersistentFooterButtons_Roq_State createState() =>
      PersistentFooterButtons_Roq_State();
}

class PersistentFooterButtons_Roq_State
    extends State<PersistentFooterButtons_Roq_App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text(
          "PersistentFooterButtons Roq App",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: null,
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style:
          ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade200),
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow.shade300,
          ),
          child: Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

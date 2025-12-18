import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Listview_Horizontal_Roq()));

class Listview_Horizontal_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          height: 150.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 150.0,
                color: Colors.blue,
                alignment: Alignment.center,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.green,
                child: ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text('Camera'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.yellow,
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.red,
                child: ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.orange,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting'),
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(PopupMenu_Baisc_Roq());
}
class PopupMenu_Baisc_Roq extends StatefulWidget {
  const PopupMenu_Baisc_Roq({super.key});

  @override
  _MyState createState() {
    return _MyState();
  }
}
class _MyState extends State<PopupMenu_Baisc_Roq>
{
  String _value = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent.shade100,
          title: Text("PopupMenuButton"),
          actions: [
            PopupMenuButton(
                color: Colors.yellowAccent,
                elevation: 20,
                enabled: true,
                onSelected: (value) {
                  setState(() {
                    _value = value;
                  });
                },
                itemBuilder:(context) => [
                  PopupMenuItem(
                    child: Text("First"),
                    value: "Roq first",
                  ),
                  PopupMenuItem(
                    child: Text("Second"),
                    value: "Roq Second",
                  ),])],),
        body:Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: new Text(_value),
          ), ), ), );
  }
}

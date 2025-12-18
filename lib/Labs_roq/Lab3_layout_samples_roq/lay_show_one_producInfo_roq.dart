
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SampleLayout_0_Roq()));
}
class SampleLayout_0_Roq extends StatelessWidget {
  SampleLayout_0_Roq({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Show Product")),
        body: Container(
            padding: EdgeInsets.all(3),
            color: Colors.yellowAccent.shade100,
            height: 110,
            child: Card(
                elevation: 20,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.asset("assets/img_roq/android.png"),
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("Android",
                                  style:TextStyle(fontWeight: FontWeight.bold)),
                              Text("Android is a very stylish phone"),
                              Text("Price:550\$"),
                            ],
                          ))
                    ])))); }}

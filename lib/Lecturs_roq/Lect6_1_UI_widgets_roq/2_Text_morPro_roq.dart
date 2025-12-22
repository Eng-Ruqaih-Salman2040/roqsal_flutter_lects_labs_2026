import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Text_MoreProp_Roq()));

class Text_MoreProp_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget RoqApp")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Hello World! This is a Text Widget by Ruqaih Salman.",
          style: TextStyle(

              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              letterSpacing: 8,
              wordSpacing: 20,
              backgroundColor: Colors.yellowAccent,
              shadows: [
                Shadow(
                    color: Colors.redAccent,
                    offset: Offset(4, 2),
                    blurRadius: 5)
              ]),
        ),
      ),
    );
  }

 const Text_MoreProp_Roq();
}

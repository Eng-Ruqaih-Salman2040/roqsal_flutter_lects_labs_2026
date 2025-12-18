import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(PopupMenuButton_intList_Roq());
}

class PopupMenuButton_intList_Roq extends StatefulWidget {
  const PopupMenuButton_intList_Roq({super.key});

  @override
  _MyState createState() {
    return _MyState();
  }
}

class _MyState extends State<PopupMenuButton_intList_Roq> {
  int _value = 0;
  List<int> _list_roq = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.limeAccent.shade100,
            title: Text("PopupMenu Button Roq App"),
            actions: [
              PopupMenuButton(
                  //color: Colors.yellowAccent.shade100,
                  elevation: 20,
                  enabled: true,
                  onSelected: (int value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  itemBuilder: (context) {
                    return _list_roq.map((int choice) {
                      return PopupMenuItem(
                        value: choice,
                        child: Text("item: $choice",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),),
                      );
                    }).toList();
                  })
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_value !=0?
            "You chose the number : $_value":"",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:flutter_widgets/const/_const.dart';

class PopupMenuButton_Roq extends StatefulWidget {
  @override
  _PopupMenuButtonState createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<PopupMenuButton_Roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton Roq App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                // OutlinedButton(onPressed: ()=>{}, child:_simplePopup()),//Text("Simple PopupMenu")),
                Text(
                  "1-Simple PopupMenuButton",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Divider(thickness: 2),
                SimplePopup_Roq(),
                SizedBox(height: 5),
                Text(
                  "2-Items of  PopupMenuButton",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Divider(thickness: 2),
                Container(
                  padding: EdgeInsets.all(10),
                    width: double.infinity,
                    color: Colors.orangeAccent,
                    child: ThreeItemPopupButton_Roq()),
                SizedBox(height: 10) ,
                Text(
                  "3- OnSelected of  PopupMenuButton",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Divider(thickness: 2),
              _selectPopup(),
                SizedBox(height: 5),
                Text(
                  "4- Padding PopupMenuButton",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Divider(thickness: 2),
                Container(color:Colors.teal.shade200,child: _paddingPopup()),
                SizedBox(height: 10),

                Text(
                  "5-Child PopupMenuButton",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Divider(thickness: 2),
                 OutlinedButton(onPressed: ()=>{}, child:_childPopup()),
                SizedBox(height: 10),//Text("Simple PopupMenu")),
                Text(
                  "6- Offset PopupMenuButton",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                Divider(thickness: 2),
                Container(color:Colors.teal.shade200,child: _offsetPopup()),
                SizedBox(height: 5),

                //
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _offsetPopup() => PopupMenuButton<int>(
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 1,
        child: Text(
          "Flutter Open",
          style: TextStyle(
              color:Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      PopupMenuItem(
        value: 2,
        child: Text(
          "Flutter Tutorial",
          style: TextStyle(
              color:Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    ],
    icon: Icon(Icons.library_add),
    offset: Offset(0, 100),
  );
  Widget _childPopup() => PopupMenuButton<int>(
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 1,
        child: Text(
          "Earth",
          style: TextStyle(
              color:Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      PopupMenuItem(
        value: 2,
        child: Text(
          "Moon",
          style: TextStyle(
              color:Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      PopupMenuItem(
        value: 3,
        child: Text(
          "Sun",
          style: TextStyle(
              color:Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    ],
    child: Container(
      height: 50,
      width: 200,
      decoration: ShapeDecoration(
        color: Colors.green,
        shape: StadiumBorder(
          side: BorderSide(color:Colors.black, width: 2),
        ),
      ),
      child: Icon(Icons.airplanemode_active),
    ),
  );
  Widget _paddingPopup() => PopupMenuButton<int>(
    itemBuilder: (context) => [
      PopupMenuItem(
        value: 1,
        child: Text(
          "English",
          style:
          TextStyle(color: Colors.purple, fontWeight: FontWeight.w700),
        ),
      ),
      PopupMenuItem(
        value: 2,
        child: Text(
          "Chinese",
          style:
          TextStyle(color:Colors.purple, fontWeight: FontWeight.w700),
        ),
      ),
    ],
    elevation: 4,
    padding: EdgeInsets.symmetric(horizontal: 50),
  );
  Widget _simplePopup() => PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text("First"),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Second"),
          ),
        ],
      );

  Widget _selectPopup() => PopupMenuButton(
    itemBuilder: (context) => [
      PopupMenuItem(
        //value: 1,
        value:"setting",
        child: Text("Setting"),
      ),
      PopupMenuItem(
        //value: 2,
        value:"help",
        child: Text("Help"),
      ),
  PopupMenuItem(
  //value: 3,
    value:"exit",
  child: Text("Exit"),
      ),
    ],
    initialValue: "help",
    onCanceled: () {
      Fluttertoast.showToast(
          msg: "You have canceled the menu.",
          toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.BOTTOM );
    },
    onSelected: (value) {
      Fluttertoast.showToast(
          msg: "value: $value",
          toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.BOTTOM );
    },
    icon: Icon(Icons.list),
  );
}

class ThreeItemPopupButton_Roq extends StatelessWidget {
  const ThreeItemPopupButton_Roq({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PopupMenuButton(
        itemBuilder: (context) {
          // var list = List<PopupMenuEntry<Object>>.empty();
          //OR
          var list = <PopupMenuEntry<Object>>[];
          list.add(
            PopupMenuItem(
              child: Text("Setting Language"),
              value: 1,
            ),
          );
          list.add(
            PopupMenuDivider(
              height: 10,
            ),
          );
          list.add(
            CheckedPopupMenuItem(
              child: Text(
                "English",
                style: TextStyle(color: Colors.black),
              ),
              value: 2,
              checked: true,
            ),
          );
          return list;
        },
        icon: Icon(
          Icons.settings,
          size: 50,
          color: Colors.white,
        ),
      );
}

class SimplePopup_Roq extends StatelessWidget {
  const SimplePopup_Roq({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text("First"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Second"),
        ),
      ],
    );
  }
}

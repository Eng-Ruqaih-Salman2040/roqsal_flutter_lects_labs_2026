import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();
  final List<String> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(
          'CheckBox ListTile Roq Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: new ListView.builder(
                itemCount: checkBoxListTileModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          new CheckboxListTile(
                              activeColor: Colors.pink[300],
                              dense: true,
                              //font change
                              title: new Text(
                                checkBoxListTileModel[index].title,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              ),
                              value: checkBoxListTileModel[index].isCheck,
                              secondary: Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  checkBoxListTileModel[index].img,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              onChanged: (bool? val) {
                                itemChange(val!, index);
                              })
                        ],
                      ),
                    ),
                  );
                }),
          ),
          const Divider(
            height: 30,
          ),
          // display selected items
          Wrap(
            children: _selectedItems
                .map((e) => Chip(
              label: Text(e),
            ))
                .toList(),
          )
        ],
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
      /////////////
      // This function is triggered when a checkbox is checked or unchecked

          if (checkBoxListTileModel[index].isCheck) {
            _selectedItems.add(checkBoxListTileModel[index].title);
          } else {
            _selectedItems.remove(checkBoxListTileModel[index].title);
          }

      /////////////
    });
  }
}class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.img, required this.title, required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/android_img.png',
          title: "Android",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/flutter.jpg',
          title: "Flutter",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/ios_img.jpg',
          title: "IOS",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'assets/images/php_img.png',
          title: "PHP",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          img: 'assets/images/node_img.png',
          title: "Node",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 6,
          img: 'assets/images/Csh_img.png',
          title: "C#",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 7,
          img: 'assets/images/Cpp_img.png',
          title: "C++",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 8,
          img: 'assets/images/vb_img.png',
          title: "VB",
          isCheck: false),
    ];
  }
}

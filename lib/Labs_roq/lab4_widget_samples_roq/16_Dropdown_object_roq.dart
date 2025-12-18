import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: DropDownButton_listObject_Roq(),
));

class DropDownButton_listObject_Roq extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  const DropDownButton_listObject_Roq();
}

class _MyAppState extends State<DropDownButton_listObject_Roq> {
  List<ListItem> _dropdownItems_roq = [
    ListItem(1, "Joan Salman"),
    ListItem(2, "Ruqaih Salman"),
    ListItem(3, "Jory Salman"),
    ListItem(4, "Elias Salman")
  ];

  late List<DropdownMenuItem<ListItem>> _dropdownMenuItems_roq;
  late ListItem _itemSelected_roq;

  void initState() {
    super.initState();
    _dropdownMenuItems_roq = buildDropDownMenuItems(_dropdownItems_roq);
    _itemSelected_roq = _dropdownMenuItems_roq[1].value!;
  }
  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown Button Roq App"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all()),

              ////////////////////////////////////////////

              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: _itemSelected_roq,
                    items: _dropdownMenuItems_roq,
                    onChanged: (value) {
                      setState(() {
                        _itemSelected_roq = value!;
                      });
                    }),
              ),
            ),
          ),
          Text("We have selected ${_itemSelected_roq.name}"),
        ],
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}




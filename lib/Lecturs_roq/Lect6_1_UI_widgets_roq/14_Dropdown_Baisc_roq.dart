import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: DropdownButton_Baisc_Roq()));

class DropdownButton_Baisc_Roq extends StatefulWidget {
  @override
  _MyState createState() => _MyState();

  const DropdownButton_Baisc_Roq();
}

class _MyState extends State<DropdownButton_Baisc_Roq> {
   int? _value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Dropdown Button Roq App"),
            ),
            body: Container(
              padding: EdgeInsets.all(20),
              child: DropdownButton(
               value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("First Item"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Second Item"),
                    value: 2,
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
                hint: Text("Select item"),
                //---------------- disabledHint run when onChanged:null
                //onChanged: null,
                disabledHint: Text("You Can not selected"),
                //--------------------- elevation
                elevation: 8,
                //------------------- style
                style: TextStyle(color: Colors.green, fontSize: 16),
//-------------------icon
                icon: Icon(Icons.arrow_drop_down_circle),
                //---------------- iconDisabledColor run when onChanged:null
                //onChanged: null,
                iconDisabledColor: Colors.black26,
                //------------------------------
                iconEnabledColor: Colors.green,
                //-----------------------------
                iconSize: 40,
                //----------------------------
                isExpanded: true,
                //-----------------------------backgroundColor
                dropdownColor: Colors.lime,
              ),
              //////////////////////////////////
            )));
  }
}

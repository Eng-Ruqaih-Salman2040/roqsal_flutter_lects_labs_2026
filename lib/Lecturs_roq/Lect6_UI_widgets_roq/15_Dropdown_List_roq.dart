import 'package:flutter/material.dart';


void main() {
  runApp(Dropdown_List_Roq());
}
class Dropdown_List_Roq extends StatefulWidget {
  const Dropdown_List_Roq({super.key});

  @override
  _MyState createState() => _MyState();
}
class _MyState extends State<Dropdown_List_Roq>
{
  int _value = 1;
  final List<int> list_items_roq = <int>[1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("DropdownButton Roq"),
            ),
            body:Container(
              padding: EdgeInsets.all(20),
              child:DropdownButton(
                value: _value,
                items: list_items_roq.map((int item) {
                  return DropdownMenuItem<int>(
                    child: Text('Log $item'),
                    value: item,
                  );
                }).toList(),

                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  }); }, )
              ,)
        )
    );
  }}

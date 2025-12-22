import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: CheckboxListTile_Roq(),));
}

class CheckboxListTile_Roq extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

  const CheckboxListTile_Roq();
}

class _HomePageState extends State<CheckboxListTile_Roq> {
  bool  valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Checkbox Example'),),
        body: Container(
            padding: new EdgeInsets.all(22.0),
            child: Column(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text('Checkbox with Header and Subtitle',style: TextStyle(fontSize:
                  20.0), ),
                  CheckboxListTile(
                    secondary: const Icon(Icons.alarm),
                    title: const Text('Ringing at 4:30 AM every day'),
                    subtitle: Text('Ringing after 12 hours'),
                    value: this.valuefirst,
                    //-->onChanged: (bool? value) {
                    onChanged: (bool? value) {
                      setState(() {
                        this.valuefirst = value!;//-->value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: const Icon(Icons.alarm),
                    title: const Text('Ringing at 5:00 AM every day'),
                    subtitle: Text('Ringing after 12 hours'),
                    value: this.valuesecond,
                    onChanged: (bool? value) {
                      setState(() {
                        this.valuesecond = value!;
                      });  },),])),),);
  }
}

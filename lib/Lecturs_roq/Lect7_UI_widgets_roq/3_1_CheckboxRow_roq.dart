import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: CheckBox_Row_Roq(),));
}

class CheckBox_Row_Roq extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();

  const CheckBox_Row_Roq();


}

class _HomePageState extends State<CheckBox_Row_Roq> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Checkbox Roq App'),),
        body: Container(

            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Text('Checkbox without Header and Subtitle: ',style:
                    TextStyle(fontSize: 17.0), ),
                    Expanded(
                      child: Checkbox(
                        checkColor: Colors.yellow,
                        activeColor: Colors.black,
                        value: this.valuefirst,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valuefirst = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Checkbox(
                        value: this.valuesecond,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valuesecond = value!;
                          }); },),),],),],)),), );
  }
}

import 'package:flutter/material.dart';
//import 'package:lab8_provide_eng_ruqaih_salman/Without_Provider_Roq_Ex/Dashboard_Roq.dart';

import 'Dashboard_Roq.dart';
class CounterPro_Roq extends StatefulWidget {
  const CounterPro_Roq({Key? key}) : super(key: key);

  @override
  _CounterPro_RoqState createState() => _CounterPro_RoqState();
}

class _CounterPro_RoqState extends State<CounterPro_Roq> {
  int counter=0;
  int n=0;
  @override
  Widget build(BuildContext context) {
    print("CounterPro_Roq n=${n++}");
    return Scaffold(
        appBar: AppBar(
        title: const Text('Without use Provider Roq App'),
    ),
    body:Dashboard_Roq(counter) ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

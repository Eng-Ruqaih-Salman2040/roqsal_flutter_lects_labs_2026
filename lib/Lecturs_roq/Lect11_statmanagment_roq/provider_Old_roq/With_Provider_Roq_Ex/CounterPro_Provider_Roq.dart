import 'package:flutter/material.dart';
import 'Dashboard_Provider_Roq.dart';
import 'My_Provide_Roq_model_ex.dart';
import 'package:provider/provider.dart';
class CounterPro_Provider_Roq extends StatefulWidget {
  const CounterPro_Provider_Roq({Key? key}) : super(key: key);

  @override
  _CounterPro_RoqState createState() => _CounterPro_RoqState();
}

class _CounterPro_RoqState extends State<CounterPro_Provider_Roq> {
 // int counter=0;
  int n=0;
  @override
  Widget build(BuildContext context) {
   print("CounterPro_Roq n=${n++}");
    return Scaffold(
        appBar: AppBar(
        title: const Text('Provider Roq App'),
    ),
    body:Dashboard_Provider_Roq() ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {Provider.of<My_Provide_Roq_model_ex>(context,listen:false).increment_Fun_roq();
        }
      ),
    );
  }
}

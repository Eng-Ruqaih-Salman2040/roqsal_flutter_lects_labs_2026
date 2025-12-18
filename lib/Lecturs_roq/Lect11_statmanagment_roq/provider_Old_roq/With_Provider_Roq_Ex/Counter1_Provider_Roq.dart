import 'package:flutter/material.dart';
import 'My_Provide_Roq_model_ex.dart';
//import 'With_Provider_Roq_Ex/My_Provide_Roq_model_ex.dart';
import 'package:provider/provider.dart';

class Counter1_Provider_Roq extends StatelessWidget {
  //final int counter;
  //const Counter1_Provider_Roq(this.counter);

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 6,
    child: Container(width: 150,height: 150, child:Center(
        child:Text("${Provider.of<My_Provide_Roq_model_ex>(context).counter_roq}",style: TextStyle(fontSize:40),),
    )
    )
    );
  }
}

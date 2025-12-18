import 'package:flutter/material.dart';

import 'Counter1_Provider_Roq.dart';
import 'Counter2_Provider_Roq.dart';
class Dashboard_Provider_Roq extends StatefulWidget {
  //final int counter;
  //const Dashboard_Provider_Roq(this.counter);

  @override
  State<Dashboard_Provider_Roq> createState() => _Dashboard_Provider_RoqState();
}

class _Dashboard_Provider_RoqState extends State<Dashboard_Provider_Roq> {
  int n=0;
  @override
  Widget build(BuildContext context) {
    print("Dashboard_Roq n=${n++}\n---------------------------");
    return Card(elevation: 10,
      child: Container(width: 400,height: 400,child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Dashboard",style: TextStyle(fontSize:60),),
          SizedBox(height: 30,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Counter1_Provider_Roq(),
                SizedBox(height: 20,),
                Counter2_Provider_Roq(),

              ]
          )
        ],
      ),),);
  }
}

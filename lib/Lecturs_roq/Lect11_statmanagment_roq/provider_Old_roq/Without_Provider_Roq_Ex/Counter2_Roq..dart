import 'package:flutter/material.dart';
class Counter2_Roq extends StatelessWidget {
  final int counter;
  const Counter2_Roq(this.counter);
  @override
  Widget build(BuildContext context) {
    return   Card(elevation: 6,
        child: Container(width: 150,height: 150, child:Center(
          child:Text(counter.toString(),style: TextStyle(fontSize:40),),
        )
        )
    );
  }
}
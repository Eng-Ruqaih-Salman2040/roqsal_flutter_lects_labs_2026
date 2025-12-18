import 'package:flutter/material.dart';

class Counter1_Roq extends StatelessWidget {
  final int counter;
  const Counter1_Roq(this.counter);

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 6,
    child: Container(width: 150,height: 150, child:Center(
        child:Text("$counter",style: TextStyle(fontSize:40),),
    )
    )
    );
  }
}

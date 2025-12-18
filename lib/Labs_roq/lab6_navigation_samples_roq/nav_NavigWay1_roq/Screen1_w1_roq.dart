
import 'package:flutter/material.dart';
import 'Screen3_w1_roq.dart';

import 'Screen2_w1_roq.dart';
class Screen1_W1_Roq extends StatelessWidget {


  //////////////////////////////////////////////////////////////////////////
  void selectScreen_fun_roq(BuildContext ctx_roq) {
    Navigator.of(ctx_roq).push(MaterialPageRoute(
        builder: (_){

          return Screen3_W1_Roq();

        }));
  }
  //////////////////////////////////////////////////////////////////////////
  //final String str_roq;
   //Screen1_Roq(this.str_roq);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" Screen1 Roq")),
    body: Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      /*Text(
        str_roq,
        style: TextStyle(fontSize: 35,
        color: Colors.purple
        ),
      ),*/
    InkWell(
    child: Text(
    "Go to Screen3",
    style: TextStyle(fontSize: 35),
    ),
    onTap: () => selectScreen_fun_roq(context),

    ),
    ]
    )));
  }
}

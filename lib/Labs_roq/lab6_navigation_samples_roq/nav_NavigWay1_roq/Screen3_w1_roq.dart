
import 'package:flutter/material.dart';

import 'Screen1_w1_roq.dart';
import 'Screen2_w1_roq.dart';
class Screen3_W1_Roq extends StatelessWidget {
  //////////////////////////////////////////////////////////////////////////
  void selectScreen_fun_roq(BuildContext ctx_roq) {
    Navigator.of(ctx_roq).push(MaterialPageRoute(
        builder: (_){

          return Screen1_W1_Roq();

        }));
  }
  //////////////////////////Recive Data from screen 1//////////////////////////////////////




  ////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" Screen3 Roq")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  InkWell(
                    child: Text(
                      "Go to Screen1",
                      style: TextStyle(fontSize: 35),
                    ),
                    onTap: () => selectScreen_fun_roq(context),

                  ),
                ]
            )));
  }
}

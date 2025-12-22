
import 'package:flutter/material.dart';

import 'Screen1_w1_roq.dart';
import 'Screen2_w1_roq.dart';
class Screen2_W1_Roq extends StatelessWidget {
  //////////////////////////////////////////////////////////////////////////
  void selectScreen_fun_roq(BuildContext ctx_roq) {
    Navigator.of(ctx_roq).push(MaterialPageRoute(
        builder: (_){

          return Screen1_W1_Roq();

        }));
  }
  //////////////////////////Recive Data from screen 1//////////////////////////////////////


  final String str_roq;
  final int int_roq;

   Screen2_W1_Roq(this.str_roq,this.int_roq);


  ////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$str_roq",
                    style: TextStyle(fontSize: 35,
                        color: Colors.purple),
                  ),
                  Text(
                    "$int_roq",
                    style: TextStyle(fontSize: 35,
                        color: Colors.purple),
                  ),
                  /*InkWell(
                    child: Text(
                      "Go to Screen1",
                      style: TextStyle(fontSize: 35),
                    ),
                    onTap: () => selectScreen_fun_roq(context),

                  ),*/
                ]
            )));
  }
}

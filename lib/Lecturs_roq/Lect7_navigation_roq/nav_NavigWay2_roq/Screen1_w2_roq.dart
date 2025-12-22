
import 'package:flutter/material.dart';

import 'Screen2_w2_roq.dart';
class Screen1_W2_Roq extends StatelessWidget {


  ////////////////////////////   Go to Screen 2  ////////////////////////////////////
  void selectScreen_fun_roq(BuildContext ctx_roq) {
    //Navigator.of(ctx_roq).pushNamed('/Screen2');  Or
    Navigator.of(ctx_roq).pushNamed('/Screen3_W2_Roq');
  }
  ///////////////////////////   Recive the data from main screen by constructure ///////////////////////////////////////
  /* final String str_roq;
   Screen1_Roq2(this.str_roq);*/
  @override
  Widget build(BuildContext context) {
    ///////////////////////////   Recive the data from main screen by arguments ///////////////////////////////////////
    //final routeargs_roq=ModalRoute.of(context).settings.arguments as Map<String,Object>;

    return Scaffold(
        appBar: AppBar(title: Text(" Screen1 Roq")),
    body: Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      /*Text(
        "Id : ${routeargs_roq['id']}",
        style: TextStyle(fontSize: 35,
        color: Colors.purple
        ),
      ),
      Text(
        "Title:${routeargs_roq['title']}",
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

    ),]
    )));
  }
}

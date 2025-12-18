
import 'package:flutter/material.dart';

import 'Screen1_w2_roq.dart';
import 'Screen2_w2_roq.dart';
class Screen2_W2_Roq extends StatelessWidget {
  static const routeName_SC2_w2_roq='/Screen2_W2_Roq';
  //////////////////////////////////////////////////////////////////////////
  /*void selectScreen_fun_roq(BuildContext ctx_roq) {
    //Navigator.of(ctx_roq).pushNamed('/Screen1');  Or
    Navigator.of(ctx_roq).pushReplacementNamed('/Screen1');
  }*/
  //////////////////////////Recive Data from screen 1//////////////////////////////////////


  /*final String str_roq;
   Screen2_Roq2(this.str_roq);*/

  ////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    ///////////////////////////   Recive the data from main screen by arguments ///////////////////////////////////////
    final Map<String, Object> routeargs_roq=ModalRoute.of(context)!.settings.arguments as Map<String,Object>;

    return Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(routeargs_roq['id'] != null ? "Id : ${routeargs_roq['id']}" : "0",

                    style: TextStyle(fontSize: 35,
                        color: Colors.purple
                    ),
                  ),
                  Text(
                    "Title:${routeargs_roq['title']}",
                    style: TextStyle(fontSize: 35,
                        color: Colors.purple
                    ),
                  ),
                  /*InkWell(
                    child: Text(
                      "Go to Screen1",
                      style: TextStyle(fontSize: 35),
                    ),
                    onTap: () => selectScreen_fun_roq(context),

                  ),*/]
            )));
  }
}

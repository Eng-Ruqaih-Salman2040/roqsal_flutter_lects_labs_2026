import 'package:flutter/material.dart';

import 'Screen2_w2_roq.dart';


class Main_Screen_Rout_Roq extends StatelessWidget {
  /////////////////////////go to another page ////////////////////////////

  void selectScreen_fun_roq(BuildContext ctx_roq,int n) {

    ////////////////////////// Condition to check and send deat to screen1 and screen 2
if(n==1) {
  Navigator.of(ctx_roq).pushNamed('/Screen1_W2_Roq');
}
else{
  Navigator.of(ctx_roq).pushNamed(
    Screen2_W2_Roq.routeName_SC2_w2_roq,
    arguments:
    {
      'id':10,
      'title':'Sanaa',

    },);}

    /*Navigator.of(ctx_roq).pushNamed(
   // Navigator.of(ctx_roq).pushReplacementNamed(
        n==1?  '/Screen1_W2_Roq':Screen2_W2_Roq.routeName_SC2_w2_roq,   //Or
      //n==1?  '/Screen1':'/Screen2',
        arguments:
        {
          'id':n==1?10:20,
        'title':n==1?'Sanaa':'Aden',

        },

        );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Main Screen Roq")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
          child: Text(
            "Go to Screen1 without send data",
            style: TextStyle(fontSize: 20),
          ),
          onTap: () => selectScreen_fun_roq(context,1),

        ),
                SizedBox(height: 10,),
        InkWell(
          child: Text(
            "Go to Screen2 with send data",
            style: TextStyle(fontSize: 20),
          ),
          onTap: () => selectScreen_fun_roq(context,2),
        )
              ],
            )));
  }
}

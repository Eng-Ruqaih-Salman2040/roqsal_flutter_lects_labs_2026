import 'package:flutter/material.dart';
//import '../../Lab9_LocalStorage_roq/sql_curdEx_roq/colors.dart';
//import '../../Lab9_LocalStorage_Projectes_roq/sql_curdEx_roq/colors.dart';
import '../../../myApp_Data_Settings_roq/constants.dart';
import 'Screen1_w1_roq.dart';
import 'Screen2_w1_roq.dart';

class Main_Screen_Push_Roq extends StatelessWidget {
  void selectScreen_fun_roq(BuildContext ctx_roq,int n) {

    Navigator.of(ctx_roq).push(MaterialPageRoute(
        builder: (_){
          if(n==1)return Screen1_W1_Roq();
          else
          return Screen2_W1_Roq("Info From main page",10);

        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Main Screen Roq")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [  TextButtonTheme(
            data: TextButtonThemeData(
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                MyColors.primaryLight),
        ),
    ),
    child: TextButton(
    onPressed:
    () => selectScreen_fun_roq(context,1),


    child:const Text(
  "Go to Screen1 without send data",
  style: TextStyle(color: Colors.white),
  ),
  ),
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

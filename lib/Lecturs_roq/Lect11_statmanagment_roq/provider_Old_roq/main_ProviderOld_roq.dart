import 'package:flutter/material.dart';
import 'With_Provider_Roq_Ex/My_Provide_Roq_model_ex.dart';
import 'package:provider/provider.dart';

import 'Lifecycle_of_Widget_Roq_Ex.dart';
import 'Lifecycle_of_Widget_Roq_Ex2.dart';
import 'With_Provider_Roq_Ex/CounterPro_Provider_Roq.dart';
import 'Without_Provider_Roq_Ex/CounterPro_Roq.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      primarySwatch: Colors.blue,
    ),

    //////////////////////// Example without use Provider /////////////////////
    //home:const CounterPro_Roq(),
    //////////////////////// Example with use Provider //////////////////////////
    /* home:ChangeNotifierProvider<My_Provide_Roq_model_ex>(
      create: (_)=>My_Provide_Roq_model_ex(),
      child:CounterPro_Provider_Roq(),)*/
    /////////////////////////////////////LifeCycle Widget /////////////////////////
    //home:Lifecycle_of_Widget_Roq_Ex(),
    home:LifeCycle_Roq_Exm(),
  ));
}


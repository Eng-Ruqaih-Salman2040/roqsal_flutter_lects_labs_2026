

import 'package:flutter/material.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab_LocalStorage_Projectes_roq/sqlf_curd_ex4_roq/page/demopage.dart';
//import 'package:flutter_laps_samples_roq_2022/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex4_roq/page/demopage.dart';



void main() => runApp(Main_Sqlf_Ex4_Roq());


class Main_Sqlf_Ex4_Roq extends StatelessWidget
  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0,fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontSize: 36.0,fontStyle: FontStyle.italic),
          displaySmall: TextStyle(fontSize: 14.0, fontFamily: 'Hind')
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan)),
        home: new Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text('SQL Lite Demo App'),
          ),
          body: Container(
            margin: EdgeInsets.all(10.0),
            child: DemoPage(),
          ),
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:lab10_dbonline_ruqaih_salman/Mysql_DB_roq/sample2_curdPages_roq/splash.dart';


void main() => runApp(CURD_Mysql_sample2_Roq());

class CURD_Mysql_sample2_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Inventory Product ",
      // theme: ThemeData(
      //   primarySwatch: Colors.indigo,
      // ),
      home: SplashScreen(),
    );
  }
}

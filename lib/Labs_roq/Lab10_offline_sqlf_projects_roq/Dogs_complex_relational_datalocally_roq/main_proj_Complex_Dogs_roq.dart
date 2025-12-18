import 'package:flutter/material.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab10_offline_sqlf_projects_roq/Dogs_complex_relational_datalocally_roq/pages/home_page.dart';


void main() {
  runApp(Main_Sqlf_Proj_Dogs_Roq());
}

class Main_Sqlf_Proj_Dogs_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SQFLite Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(secondary: Colors.tealAccent),
      ),
      home: HomePage_Proj_Roq(),
    );
  }
}

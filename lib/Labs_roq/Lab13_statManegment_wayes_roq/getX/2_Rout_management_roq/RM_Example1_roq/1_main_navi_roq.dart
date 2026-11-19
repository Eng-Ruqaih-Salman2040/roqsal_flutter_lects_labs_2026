import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens_roq/fourth.dart';
import 'screens_roq/home.dart';
import 'screens_roq/second.dart';
import 'screens_roq/third.dart';




void main() {
  runApp(NavigationEx1_Getx_Roq());
}

class NavigationEx1_Getx_Roq extends StatelessWidget {
  const NavigationEx1_Getx_Roq({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      theme: ThemeData(
        hintColor: Colors.purpleAccent,
        primaryColor: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/second', page: () => Second()),
        GetPage(name: '/third', page: () => Third(), transition: Transition.zoom),
        GetPage(name: "/fourth", page: () => Fourth()),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home_Binding_roq.dart';
import 'myBindings_roq.dart';

class MainBinding_Roq extends StatelessWidget {
  const MainBinding_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Binding Roq App",
      theme:ThemeData(primarySwatch:Colors.teal ),
      home:Home_Binding_Roq(),
      ////////////////////////////
      //Injection to All pages at App level
      initialBinding: MyBindings_Roq(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page:()=> Home_Binding_Roq()),
        //--------------------Or -------------------
        //GetPage(name: "/", page:()=> Home_Binding_Roq(),binding: MyBindings_Roq()),
      ],


    );
  }
}

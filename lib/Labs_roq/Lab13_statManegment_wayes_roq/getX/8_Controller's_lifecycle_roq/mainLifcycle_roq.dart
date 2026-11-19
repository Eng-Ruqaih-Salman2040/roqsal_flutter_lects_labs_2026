import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home_Lifcyclet__roq.dart';
import 'myBindings_lifcycle_roq.dart';

class MainLifecycle_Roq extends StatelessWidget {
  const MainLifecycle_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Lifcycle Roq App",
      theme:ThemeData(primarySwatch:Colors.teal ),
      home:Home_Lifcyclet__Roq(),
      ////////////////////////////
      //Injection to All pages at App level
      initialBinding: MyBindings_Lifecycle_Roq(),
      initialRoute: "/Home_Lifcyclet__Roq",
      getPages: [
        GetPage(name: "/Home_Lifcyclet__Roq", page:()=> Home_Lifcyclet__Roq()),
        //--------------------Or -------------------
        //GetPage(name: "/", page:()=> Home_Binding_Roq(),binding: MyBindings_Roq()),
      ],


    );
  }
}

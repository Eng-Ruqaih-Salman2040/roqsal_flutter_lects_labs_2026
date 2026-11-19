import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/15_Getx_Features_roq/navigation_arguments_roq/sc2_naviArgum_roq.dart';

import 'homeNav_argumentes_roq.dart';
class MainNav_Argum_Roq extends StatelessWidget {
  const MainNav_Argum_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //--------------------- 1_Dependendency_Injection

    return GetMaterialApp(
      title: "Features Navigation",
      theme:ThemeData(primarySwatch:Colors.teal ),

      initialRoute: "/Home_Nav_Argu_Roq",
      getPages: [
        GetPage(name: "/Home_Nav_Argu_Roq", page:()=> Home_Nav_Argu_Roq()),
        GetPage(name: "/Screen2", page:()=> Sc2_NaviArgum_Roq()),

        //--------------------Or -------------------
        //GetPage(name: "/", page:()=> Home_Binding_Roq(),binding: MyBindings_Roq()),
      ],


    );
  }
}

//////////////////////////////////////////////

///////////////////////////////////////

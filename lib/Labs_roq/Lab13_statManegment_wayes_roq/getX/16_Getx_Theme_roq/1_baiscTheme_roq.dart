
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../15_Getx_Features_roq/navigation_arguments_roq/sc2_naviArgum_roq.dart';
class BaiscMainTheme_Roq extends StatelessWidget {
  const BaiscMainTheme_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //--------------------- 1_Dependendency_Injection

    return GetMaterialApp(
      title: "Theme with Getx",
      theme:ThemeData.dark(),

      initialRoute: "/Baisc_Theme_Roq",
      getPages: [
        GetPage(name: "/Baisc_Theme_Roq", page:()=> Baisc_Theme_Roq()),
        GetPage(name: "/Sc2_NaviArgum_Roq", page:()=> Sc2_NaviArgum_Roq()),


        ],





    );
  }
}
class Baisc_Theme_Roq extends StatelessWidget {
  const Baisc_Theme_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Theme with Getx"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("Screen2",arguments:{
                          "no":1,
                          "name":"Ruqaih Salman",

                        } );

                      },
                      child: Text("Go Screen1 "))),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if(Get.isDarkMode)
                          {
                            Get.changeTheme(ThemeData.light());
                          }
                        else
                          Get.changeTheme(ThemeData.dark());


                      },
                      child: Text("Change Theme"))),


            ]),
      ),
    );
  }
}
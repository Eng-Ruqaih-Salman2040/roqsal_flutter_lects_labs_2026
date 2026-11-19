
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../15_Getx_Features_roq/navigation_arguments_roq/sc2_naviArgum_roq.dart';
class CustomMainTheme_Roq extends StatelessWidget {
  const CustomMainTheme_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //--------------------- 1_Dependendency_Injection

    return GetMaterialApp(
      title: "Custom Theme with Getx",
      theme:Themes_roq.customDarkTheme_roq,

      initialRoute: "/Custom_Theme_Roq",
      getPages: [
        GetPage(name: "/Custom_Theme_Roq", page:()=> Custom_Theme_Roq()),
        GetPage(name: "/Sc2_NaviArgum_Roq", page:()=> Sc2_NaviArgum_Roq()),

        //--------------------Or -------------------
        //GetPage(name: "/", page:()=> Home_Binding_Roq(),binding: MyBindings_Roq()),
      ],


    );
  }
}
class Custom_Theme_Roq extends StatelessWidget {
  const Custom_Theme_Roq({Key? key}) : super(key: key);

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
                        Get.toNamed("Sc2_NaviArgum_Roq",arguments:{
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
                            Get.changeTheme(Themes_roq.customLightTheme_roq);
                          }
                        else
                          Get.changeTheme(Themes_roq.customDarkTheme_roq);


                      },
                      child: Text("Change Theme"))),


            ]),
      ),
    );
  }
}
//////////////////////////////////////////////////////
class Themes_roq
{
  static ThemeData customDarkTheme_roq=ThemeData.dark().copyWith(
   appBarTheme: AppBarTheme(color:Colors.teal)
  );
  static ThemeData customLightTheme_roq=ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(color:Colors.teal.shade100)
  );
}
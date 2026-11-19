import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/11_Localization_Getx_roq/3_LocalTranslation_roq/localController_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/11_Localization_Getx_roq/3_LocalTranslation_roq/local3_roq.dart';

// import 'package:roqsal_getx_completly_2026/11_Localization_Getx_roq/3_LocalTranslation_roq/local3_roq.dart';
//
// import 'package:roqsal_getx_completly_2026/11_Localization_Getx_roq/3_LocalTranslation_roq/localController_roq.dart';

//lib/Labs_roq/Lab13_statManegment_wayes_roq/getX/11_Localization_Getx_roq/3_LocalTranslation_roq/localController_roq.dart

class MainLocalController_Roq extends StatelessWidget {
  const MainLocalController_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //--------------------- 1_Dependendency_Injection
    Get.put(LocalController_Roq());
    return GetMaterialApp(
      title: "Localization & Controller App",
      theme:ThemeData(primarySwatch:Colors.teal ),
//---------------------- Get Device Language ----------------
      locale: Get.deviceLocale,
translations: MyLocalController_Roq(),
      initialRoute: "/Home_LocalController_Roq",
      getPages: [
        GetPage(name: "/Home_LocalController_Roq", page:()=> Home_LocalController_Roq()),

        //--------------------Or -------------------
        //GetPage(name: "/", page:()=> Home_Binding_Roq(),binding: MyBindings_Roq()),
      ],


    );
  }
}
//////////////////////
class Home_LocalController_Roq extends StatelessWidget {
   Home_LocalController_Roq({Key? key}) : super(key: key);
//--------------------- 2_Find Dependendency_Injection
  LocalController_Roq localContrller_roq=Get.find();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("title".tr),
        actions: [
          PopupMenuButton(
              //color: Colors.yellowAccent,
              //elevation: 20,
              //enabled: true,
              onSelected: (value) {
                localContrller_roq.ChangLang_roq(value);

              },
              itemBuilder:(context) => [
                PopupMenuItem(
                  child: Text("arabic".tr),
                  value: "ar",
                ),
                PopupMenuItem(
                  child: Text("english".tr),
                  value: "en",
                ),
              ]
          )
        ],
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        //Injection to only one page
                        //Get.to(()=>Sc1_Binding_Roq(),binding: MyBindings_Roq());
                        Get.to(()=>Sc1_LocTransController_Roq());
                      },
                      child: Text("log".tr))),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>Sc2_LocTransController_Roq());
                      },
                      child: Text("features".tr))),

            ]),
      ),
    );
  }
}

class Sc1_LocTransController_Roq extends StatelessWidget {
  const Sc1_LocTransController_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class Sc2_LocTransController_Roq extends StatelessWidget {
  const Sc2_LocTransController_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


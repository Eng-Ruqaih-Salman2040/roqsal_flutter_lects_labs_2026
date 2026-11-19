import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:roqsal_getx_completly_2026/11_Localization_Getx_roq/2_LocalTranslation_roq/local_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/11_Localization_Getx_roq/2_LocalTranslation_roq/local_roq.dart';



class MainLocalizatio_Roq extends StatelessWidget {
  const MainLocalizatio_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Localization App",
      theme:ThemeData(primarySwatch:Colors.teal ),
//---------------------- Get Device Language ----------------
      locale: Get.deviceLocale,
translations: MyLocal_Roq(),
      initialRoute: "/Home_Localization_Roq",
      getPages: [
        GetPage(name: "/Home_Localization_Roq", page:()=> Home_Localization_Roq()),

        //--------------------Or -------------------
        //GetPage(name: "/", page:()=> Home_Binding_Roq(),binding: MyBindings_Roq()),
      ],


    );
  }
}
//////////////////////
class Home_Localization_Roq extends StatelessWidget {
  const Home_Localization_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("title".tr),
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
                        Get.to(()=>Sc1_LocTrans_Roq());
                      },
                      child: Text("log".tr))),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>Sc2_LocTrans_Roq());
                      },
                      child: Text("features".tr))),

            ]),
      ),
    );
  }
}

class Sc1_LocTrans_Roq extends StatelessWidget {
  const Sc1_LocTrans_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class Sc2_LocTrans_Roq extends StatelessWidget {
  const Sc2_LocTrans_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


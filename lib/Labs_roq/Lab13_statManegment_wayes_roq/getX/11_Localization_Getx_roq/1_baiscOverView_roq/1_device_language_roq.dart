import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../7_Dependendency_Injection_roq/7_1_Bindings_roq/Sc1_Bindin_roq.dart';
import '../../7_Dependendency_Injection_roq/7_1_Bindings_roq/myBindings_roq.dart';



class Loc_DeviceLoang_Roq extends StatelessWidget {
  const Loc_DeviceLoang_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Localization Baisc App",
      theme:ThemeData(primarySwatch:Colors.teal ),
//---------------------- Get Device Language ----------------
      locale: Get.deviceLocale,

      initialRoute: "/Home_LocaBaisc_Roq",
      getPages: [
        GetPage(name: "/Home_LocaBaisc_Roq", page:()=> Home_LocaBaisc_Roq()),

        //--------------------Or -------------------
        //GetPage(name: "/", page:()=> Home_Binding_Roq(),binding: MyBindings_Roq()),
      ],


    );
  }
}
//////////////////////////////////

class Home_LocaBaisc_Roq extends StatelessWidget {
  const Home_LocaBaisc_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Localization Baisc"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        //Injection to only one page
                        Get.to(()=>Sc1_Binding_Roq(),binding: MyBindings_Roq());
                        //Get.to(()=>Sc1_LocDB_Roq());
                      },
                      child: Text("Go Screen1 "))),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>Sc2_LocDB_Roq());
                      },
                      child: Text("Go Screen2"))),

            ]),
      ),
    );
  }
}

class Sc1_LocDB_Roq extends StatelessWidget {
  const Sc1_LocDB_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class Sc2_LocDB_Roq extends StatelessWidget {
  const Sc2_LocDB_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen3_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen4_roq.dart';

import 'ControllerGB_GetLzyput_roq.dart';
import 'Sc1_GetLazyput_roq.dart';
import 'Sc2_GetLazyput_roq.dart';

void main() {
  runApp(Home_GetLazeyPut_Roq());
}

class Home_GetLazeyPut_Roq extends StatelessWidget {
   Home_GetLazeyPut_Roq({Key? key}) : super(key: key);
   //----->Error Co_GB_GetLazyput_Roq controller_roq=Get.lazyPut(() => Co_GB_GetLazyput_Roq());
 //------------------------ Call Lazyput only once after that the Error Will showed -----------------
   // final controller_roq=Get.lazyPut(() => Co_GB_GetLazyput_Roq()); //Not Error
//------------------------- Lowe Call more than one but make the value zero in the call 2 --------
 final controller_roq=Get.lazyPut(() => Co_GB_GetLazyput_Roq(),fenix: true); //Rest data when we Navigation between pages

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Get LazyPut Roq"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=> Sc1_GetLazyput_Roq());

                  },
                  child: Text("Go Screen1 "))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>Sc2_GetLazyput_Roq());
                  },
                  child: Text("Go Screen2"))),

        ]),
      ),
    ));
  }
}

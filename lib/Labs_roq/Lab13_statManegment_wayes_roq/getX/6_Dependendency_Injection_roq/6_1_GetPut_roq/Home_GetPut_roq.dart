import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen1_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen2_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen3_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen4_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/6_Dependendency_Injection_roq/6_1_GetPut_roq/Sc1_Getput_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/6_Dependendency_Injection_roq/6_1_GetPut_roq/Sc2_GetPut_roq.dart';

// import 'Sc1_Getput_roq.dart';
// import 'Sc2_GetPut_roq.dart';

void main() {
  runApp(Home_GetPut_Roq());
}

class Home_GetPut_Roq extends StatelessWidget {
  const Home_GetPut_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Get Put"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>Sc1_Getput_Roq());

                  },
                  child: Text("Go Screen1 "))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>Sc2_Getput_Roq());
                  },
                  child: Text("Go Screen2"))),

        ]),
      ),
    ));
  }
}

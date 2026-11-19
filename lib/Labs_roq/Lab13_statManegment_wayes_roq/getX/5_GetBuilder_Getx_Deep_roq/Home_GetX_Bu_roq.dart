import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen1_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen2_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen3_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/screen4_roq.dart';
// import 'package:roqsal_getx_completly_2026/5_GetBuilder_Getx_Deep_roq/screen1_roq.dart';
// import 'package:roqsal_getx_completly_2026/5_GetBuilder_Getx_Deep_roq/screen2_roq.dart';
// import 'package:roqsal_getx_completly_2026/5_GetBuilder_Getx_Deep_roq/screen3_roq.dart';
// import 'package:roqsal_getx_completly_2026/5_GetBuilder_Getx_Deep_roq/screen4_roq.dart';


void main() {
  runApp(Home_Get_X_Builder_Roq());
}

class Home_Get_X_Builder_Roq extends StatelessWidget {
  const Home_Get_X_Builder_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("SM_GetxBu_Roq"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to( Screen1_Roq());

                  },
                  child: Text("Go Screen1"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Screen2_Roq());
                  },
                  child: Text("Go Screen2"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Screen3_Roq());
                  },
                  child: Text("Go Screen3"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Screen4_Roq());
                  },
                  child: Text("Go Screen4"))),
        ]),
      ),
    ));
  }
}

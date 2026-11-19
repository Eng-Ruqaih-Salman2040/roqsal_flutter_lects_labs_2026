import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ControllerGB_GetLzyput_roq.dart';
class Sc2_GetLazyput_Roq extends StatelessWidget {
   Sc2_GetLazyput_Roq({Key? key}) : super(key: key);
  // Co_GB_GetLazyput_Roq controller_roq=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Screen2_Roq"),
    ),
    body: Container(child: Center(child:
    GetBuilder<Co_GB_GetLazyput_Roq>(
     // init: Co_GB_GetLazyput_Roq(), //Not nessery becus the get.put make it
        builder: (controller_roq) =>
            Text("The Counter : ${controller_roq.counter_roq}",
              style: TextStyle(fontSize: 30),))),));
  }
}

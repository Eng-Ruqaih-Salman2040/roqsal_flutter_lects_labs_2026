import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/ControllerGetXSc3_roq.dart';
//import 'package:roqsal_getx_completly_2026/5_GetBuilder_Getx_Deep_roq/ControllerGetXSc3_roq.dart';
class Screen3_Roq extends StatelessWidget {
  Screen3_Roq({Key? key}) : super(key: key);

  ControllerGetx_Sc3_Roq excontroller2=Get.put(ControllerGetx_Sc3_Roq());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen3_Roq"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: GetX<ControllerGetx_Sc3_Roq>(
                    init: ControllerGetx_Sc3_Roq(),
                    builder: (controller){
                      print("Count 1: Rebuild");
                      return Text("${controller.counter1.value}",style: Theme.of(context).textTheme.headlineSmall,);
                    },
                  )),
              Center(
                  child: GetX<ControllerGetx_Sc3_Roq>(
                   init: ControllerGetx_Sc3_Roq(),
                    builder: (controller){
                      print("Count 2: Rebuild");
                      return Text("${controller.counter2.value}",style: Theme.of(context).textTheme.headlineSmall,);
                    },
                  )),
              Center(
                  child: GetX<ControllerGetx_Sc3_Roq>(
                   init: ControllerGetx_Sc3_Roq(),
                    builder: (controller){
                      print("Sum 3: Rebuild");
                      return Text("${controller.sum}",style: Theme.of(context).textTheme.headlineSmall,);
                    },
                  )),


              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        excontroller2.IncrementC1_Funroq();
                      },
                      child: Text("Add Counter1++"))),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        excontroller2.IncrementC2_Funroq();
                      },
                      child: Text("Add Counter2++"))),
            ]),
      ),);
  }
}

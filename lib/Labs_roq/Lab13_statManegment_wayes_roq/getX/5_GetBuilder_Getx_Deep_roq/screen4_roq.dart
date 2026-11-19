import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/ControllerGetBuilderSc4_roq.dart';
//import 'package:roqsal_getx_completly_2026/5_GetBuilder_Getx_Deep_roq/ControllerGetBuilderSc4_roq.dart';
class Screen4_Roq extends StatelessWidget {
   Screen4_Roq({Key? key}) : super(key: key);
   ControllerGB_Sc4_Roq excontroller=Get.put(ControllerGB_Sc4_Roq());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen4_Roq"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: GetBuilder<ControllerGB_Sc4_Roq>(
              init: ControllerGB_Sc4_Roq(),
          builder: (controller){
                print("Count 1: Rebuild");
                return Text("${controller.counter1}",style: Theme.of(context).textTheme.headlineSmall,);
          },
          )),
                Center(
                    child: GetBuilder<ControllerGB_Sc4_Roq>(
                      init: ControllerGB_Sc4_Roq(),
                      builder: (controller){
                        print("Count 2: Rebuild");
                        return Text("${controller.counter2}",style: Theme.of(context).textTheme.headlineSmall,);
                      },
                    )),
                Center(
                    child: GetBuilder<ControllerGB_Sc4_Roq>(
                      init: ControllerGB_Sc4_Roq(),
                      builder: (controller){
                        print("Sum 3: Rebuild");
                        return Text("${controller.sum}",style: Theme.of(context).textTheme.headlineSmall,);
                      },
                    )),


                Center(
                    child: ElevatedButton(
                        onPressed: () {
                        excontroller.IncrementC1_Funroq();
                        },
                        child: Text("Add Counter1++"))),
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          excontroller.IncrementC2_Funroq();
                        },
                        child: Text("Add Counter2++"))),
              ]),
        ),);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab13_statManegment_wayes_roq/getX/5_GetBuilder_Getx_Deep_roq/ControllerGetBuilderSc1_roq.dart';
//import 'package:roqsal_getx_completly_2026/5_GetBuilder_Getx_Deep_roq/ControllerGetBuilderSc1_roq.dart';
class Screen1_Roq extends StatelessWidget {
  const Screen1_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Screen1_Roq"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<Controller_GetBuilder5_Roq>(
                init: Controller_GetBuilder5_Roq(),
                builder: (controller5_roq) =>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: IconButton(onPressed: () {
                              controller5_roq.Increment_Funroq();
                            }, icon: Icon(Icons.add, size: 40),)
                        ),
                        Center(child: Text("${controller5_roq.counter_roq}",
                          style: TextStyle(fontSize: 30),)),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: IconButton(onPressed: () {
                              controller5_roq.Dncrement_Funroq();
                            }, icon: Icon(Icons.remove, size: 40,),)
                        ),

                      ],
                    ),
              ),
            ],
          ),
        ),

      );
  }
}

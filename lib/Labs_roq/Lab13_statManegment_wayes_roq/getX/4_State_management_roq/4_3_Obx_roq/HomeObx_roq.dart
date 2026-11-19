import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'ControllerObx_roq.dart';

void main() {
  runApp(Home_Obx_Roq());
}

class Home_Obx_Roq extends StatelessWidget {

  Home_Obx_Roq({Key? key}) : super(key: key);
  Controller_Obx_Roq controller_roq=Get.put(Controller_Obx_Roq());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SM_Obx_Roq"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Obx(() =>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: IconButton(onPressed: () {
                              controller_roq.Increment_Funroq();
                            }, icon: Icon(Icons.add, size: 40),)
                        ),
                        Center(child: Text("${controller_roq.counter_roq.value}",
                          style: TextStyle(fontSize: 30),)),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: IconButton(onPressed: () {
                              controller_roq.Dncrement_Funroq();
                            }, icon: Icon(Icons.remove, size: 40,),)
                        ),

                      ],
                    ),
      )

            ],
          ),
        ),

      ),);
  }
}




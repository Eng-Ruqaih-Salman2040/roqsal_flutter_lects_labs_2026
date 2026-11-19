import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ControllerGB_Binding_roq.dart';




void main() {
  runApp(Sc1_Binding_Roq());
}

class Sc1_Binding_Roq extends StatelessWidget {
   Sc1_Binding_Roq({Key? key}) : super(key: key);
   Co_GB_Binding_Roq controller_roq=Get.find();
   @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Dependency Injection(Get.put)"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: IconButton(onPressed: () {
                              controller_roq.Increment_Funroq();
                            }, icon: Icon(Icons.add, size: 40),)
                        ),
                        Center(child:
                        GetBuilder<Co_GB_Binding_Roq>(
                           // init: Co_GB_Getput_Roq(), Not nessery becus the get.put make it
                            builder: (controller_roq) =>
                        Text("${controller_roq.counter_roq}",
                          style: TextStyle(fontSize: 30),))),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: IconButton(onPressed: () {
                              controller_roq.Dncrement_Funroq();
                            }, icon: Icon(Icons.remove, size: 40,),)
                        ),

                      ],
                    ),

            ],
          ),
        ),

      );
  }
}


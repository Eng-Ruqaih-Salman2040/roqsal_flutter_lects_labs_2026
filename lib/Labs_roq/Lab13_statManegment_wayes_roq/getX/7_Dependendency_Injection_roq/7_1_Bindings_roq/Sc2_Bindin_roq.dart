import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ControllerGB_Binding_roq.dart';


class Sc2_Binding_Roq extends StatelessWidget {
  const Sc2_Binding_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Screen2_Roq"),
    ),
    body: Container(child: Center(child:
    GetBuilder<Co_GB_Binding_Roq>(
     //init: Co_GB_Binding_Roq(), //Not nessery becus the get.put make it
        builder: (controller_roq) =>
            Text("The Counter : ${controller_roq.counter_roq}",
              style: TextStyle(fontSize: 30),))),));
  }
}

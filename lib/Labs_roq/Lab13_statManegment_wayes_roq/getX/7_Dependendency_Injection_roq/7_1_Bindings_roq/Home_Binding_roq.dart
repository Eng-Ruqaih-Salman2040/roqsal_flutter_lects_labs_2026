import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Sc1_Bindin_roq.dart';
import 'Sc2_Bindin_roq.dart';
import 'myBindings_roq.dart';



void main() {
  runApp(Home_Binding_Roq());
}

class Home_Binding_Roq extends StatelessWidget {
  const Home_Binding_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        title: Text("Home Bindings"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    //Injection to only one page
                    //Get.to(()=>Sc1_Binding_Roq(),binding: MyBindings_Roq());
                   Get.to(()=>Sc1_Binding_Roq());
                  },
                  child: Text("Go Screen1 "))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>Sc2_Binding_Roq());
                  },
                  child: Text("Go Screen2"))),

        ]),
      ),
    );
  }
}

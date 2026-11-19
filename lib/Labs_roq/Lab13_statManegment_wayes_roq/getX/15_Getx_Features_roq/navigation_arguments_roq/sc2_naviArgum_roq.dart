import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllerFeatures_roq.dart';

class Sc2_NaviArgum_Roq extends StatelessWidget {
   Sc2_NaviArgum_Roq({Key? key}) : super(key: key);
  ControllerFeatures_Roq controllerFeat_roq=Get.put(ControllerFeatures_Roq());

  @override
  Widget build(BuildContext context) {
    ControllerFeatures_Roq ControllerFeatu = Get.put(ControllerFeatures_Roq());
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2 Recive Data"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //------------------- 1.Navigation var between pages --------------


          Center(child: Text("Your No : ${ControllerFeatu.no_roq}")),
          Center(child: Text("Your Name : ${ControllerFeatu.name_roq}")),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed("home");
                  },
                  child: Text("Go Home "))),
          //-------------------- 2.Show a previouse page name ----------------
          Center(child: Text("Previous Route : ${ControllerFeatu.preRout_roq}")),
          //-------------------- 3.Get All Route Information ----------------
          Center(child: Text("Current Route : ${ControllerFeatu.routCurrent_roq}")),
          //-------------------- 4.Check if Snackbar is open or not----------------
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar("title", "message",backgroundColor: Colors.black,colorText: Colors.white,);
                    controllerFeat_roq.butClicked_Funroq();
                  },
                  child: Text("Show Snackbar"))),

          Center(
              child: ElevatedButton(
                  onPressed: () {

                    print("Is Snackbar Opened ? ${Get.isSnackbarOpen}");
                  },
                  child: Text("Check"))),
     
        ]),
      ),
    );
  }
}

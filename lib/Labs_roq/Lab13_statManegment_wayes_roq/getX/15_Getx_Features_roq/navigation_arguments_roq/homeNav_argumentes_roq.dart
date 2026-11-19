
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../16_Getx_Theme_roq/sc2_Theme_roq.dart';
class Home_Nav_Argu_Roq extends StatelessWidget {
  const Home_Nav_Argu_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Navigation & Arguments"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("Screen2",arguments:{
                          "no":1,
                          "name":"Ruqaih Salman",

                        } );
                       /* Get.to(Sc2_NaviArgum_Roq(),arguments:{
                          "no":1,
                          "name":"Ruqaih Salman",

                        } );*/
                      },
                      child: Text("Go Screen1 "))),


            ]),
      ),
    );
  }
}
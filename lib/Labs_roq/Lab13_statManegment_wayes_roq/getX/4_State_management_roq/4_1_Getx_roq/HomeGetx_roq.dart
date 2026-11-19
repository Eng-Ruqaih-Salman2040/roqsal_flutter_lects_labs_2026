import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'ControllerGetx_roq.dart';

void main() {
  runApp(Home_Getx_Roq());
}

class Home_Getx_Roq extends StatelessWidget {
  const Home_Getx_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SM_Getx_Roq"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              GetX<Controller_Getx_Roq>(
                init: Controller_Getx_Roq(),
                builder: (controller_roq) =>
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
              ),
            ],
          ),
        ),

      ),);
  }
}




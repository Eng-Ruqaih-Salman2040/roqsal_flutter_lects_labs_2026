import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DialogGetx_Roq extends StatelessWidget {
  const DialogGetx_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Scaffold(
        // drawer: Drawer(),
          appBar: AppBar(
            title: Text("Dialog Using GetX"),
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
                    Get.defaultDialog(
                        title: "Welcome to Flutter Dev'S",
                        middleText: "FlutterDevs is a protruding flutter app development company with "
                            "an extensive in-house team of 30+ seasoned professionals who know "
                            "exactly what you need to strengthen your business across various dimensions",
                        backgroundColor: Colors.teal,
                        titleStyle: TextStyle(color: Colors.white),
                        middleTextStyle: TextStyle(color: Colors.white),
                        radius: 30
                    );
      },
      child: Text("Show Dialog Ex1 "))),
                    Center(
                        child: ElevatedButton(
                          child: Text('Show Dialog Ex2'),
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Welcome to Flutter Agency",
                              middleText: "We are the best Flutter App Development Company!",
                              backgroundColor: Colors.red,
                              titleStyle: TextStyle(color: Colors.white),
                              middleTextStyle: TextStyle(color: Colors.white),
                            );
                          },
                        )),
                    //---------------------- Check Dialog--------------
                    Center(
                        child: ElevatedButton(
                          child: Text('Show Dialog Ex3'),
                          onPressed: () {
                            Get.dialog(
                              AlertDialog(
                                title: const Text('Dialog'),
                                content: const Text('This is a dialog'),
                                actions: [
                                  TextButton(
                                    child: const Text("Close"),
                                    onPressed: () => Get.back(),
                                  ),
                                ],
                              ),
                            );
                          },
                        )),
                    Center(
                        child: ElevatedButton(
                          child: Text('Show Dialog Ex4'),
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Dialog Roq Title",
                              middleText: "Hello D/Ruqaih Salman!",
                              backgroundColor: Colors.green,
                              titleStyle: TextStyle(color: Colors.white),
                              middleTextStyle: TextStyle(color: Colors.white),

                            );
                          },
                        )),

                    Center(
                        child: ElevatedButton(
                          child: Text('Show Dialog Ex5'),
                          onPressed: () {
                            Get.defaultDialog(
                                title: "GeeksforGeeks",
                                middleText: "Hello world!",
                                backgroundColor: Colors.green,
                                titleStyle: TextStyle(color: Colors.white),
                                middleTextStyle: TextStyle(color: Colors.white),
                                textConfirm: "Confirm",
                                textCancel: "Cancel",
                                cancelTextColor: Colors.white,
                                confirmTextColor: Colors.white,
                                buttonColor: Colors.red,
                                barrierDismissible: false,
                                radius: 50,
                                content: Column(
                                  children: [
                                    Container(child:Text("Hello 1")),
                                    Container(child:Text("Hello 2")),
                                    Container(child:Text("Hello 3")),
                                  ],
                                )
                            );
                          },
                        )),

                  ]))),
    );
  }
}

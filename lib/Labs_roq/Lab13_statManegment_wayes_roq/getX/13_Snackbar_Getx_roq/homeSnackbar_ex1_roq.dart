import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SnackbarGetx_Ex1_Roq extends StatelessWidget {
  const SnackbarGetx_Ex1_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Snackbar Using GetX"),
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
                              Get.snackbar(
                                "title",
                                "Display the message here",
                                colorText: Colors.white,
                                backgroundColor: Colors.lightBlue,
                                icon: const Icon(Icons.add_alert),
                              );
                            },
                            child: Text("Show Snackbar Ex1 "))),
                    Center(
                        child: ElevatedButton(
                          child: Text('Show Snackbar Ex2'),
                          onPressed: () {
                            Get.showSnackbar(
                              GetSnackBar(
                                title: "title",
                                message: 'User Registered Successfully',
                                icon: const Icon(Icons.refresh),
                                duration: const Duration(seconds: 3),
                              ),
                            );
                          },
                        )),
                    //---------------------- Check Dialog--------------
                    Center(
                        child: ElevatedButton(
                          child: Text('Show snackbar Ex3'),
                          onPressed: () {
                            Get.snackbar(
                                'User 123',
                                'Successfully created',
                                snackPosition: SnackPosition.BOTTOM
                            );
                          },
                        )),
                    Center(
                        child: ElevatedButton(
                          child: Text('Show snackbar Ex4'),
                          onPressed: () {
                            Get.snackbar(
                              "Hello",
                              "Thank You!",
                              snackPosition: SnackPosition.TOP,
                              colorText: Colors.white,
                              borderRadius: 10,
                              backgroundColor:  Colors.teal ,
                             // icon: Image.asset("assets/images/success_toast.png",
                              icon: const Icon(Icons.add_alert,size: 25,

                                color: Colors.white,
                              ),
                            );
                          },
                        )),
                    Center(
                        child: ElevatedButton(
                          child: Text('Show snackbar Ex5'),
                          onPressed: () {
                            Get.snackbar(
                              "Default SnackBar",
                              "This is the Getx default SnackBar",
                              backgroundColor: Colors.grey,
                              snackPosition: SnackPosition.BOTTOM,
                              borderColor: Colors.indigo,
                              borderRadius: 0,
                              borderWidth: 2,
                              barBlur: 0,
                            );
                          },
                        )),
    Center(
    child: ElevatedButton(
    child: Text('Show snackbar Ex6'),
    onPressed: () {
      Get.showSnackbar(
        GetBar(
          title: "GetBar Demo",
          message: "This is a ",
          isDismissible: true,
        ),
      );
    },
    )),


//---------------------------- Using Get.showSnackbar() ---------------


                  ]))),
    );
  }

}

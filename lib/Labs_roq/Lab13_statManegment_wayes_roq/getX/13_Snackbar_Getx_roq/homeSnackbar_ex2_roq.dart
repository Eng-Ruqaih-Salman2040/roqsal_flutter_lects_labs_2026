import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(SnackbarGetx_Ex2_Roq());

class SnackbarGetx_Ex2_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(title: Text("Snackbar")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Show Snackbar"),
                  onPressed: () {
                    Get.snackbar(
                        "Snackbar Title", "This will be Snackbar Message",
                        titleText: Text("Another Title"),
                        messageText: Text(
                          "Another Message",
                          style: TextStyle(color: Colors.white),
                        ),
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: Colors.white,
                        backgroundColor: Colors.black,
                        borderRadius: 30,
                        margin: EdgeInsets.all(10),
                        //maxWidth: 100,
                        animationDuration: Duration(milliseconds: 3000),
                        backgroundGradient: LinearGradient(
                          colors: [Colors.black, Colors.yellow],
                        ),
                        // While using borderColor ensure you are using borderWidth otherwise error will be generated
                        borderColor: Colors.purple,
                        borderWidth: 4,
                        boxShadows: [
                          BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(30, 50),
                              spreadRadius: 20,
                              blurRadius: 8)
                        ],

                       // dismissDirection: SnackDismissDirection.HORIZONTAL,
                        forwardAnimationCurve: Curves.bounceInOut,
                        duration: Duration(milliseconds: 8000),
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        shouldIconPulse: false,
                        isDismissible: true,
                        leftBarIndicatorColor: Colors.red,
                        mainButton: TextButton(
                          child: Text("Retry",style:TextStyle( color:Colors.white),),
                          style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          ),
                          onPressed: () {},
                        ),

                        onTap: (val) {
                          print("Retry clicked");
                        },
                        //overlayBlur: 5,
                        // overlayColor: Colors.grey,
                        padding: EdgeInsets.all(50),
                        showProgressIndicator: true,
                        progressIndicatorBackgroundColor: Colors.deepOrange,
                        progressIndicatorValueColor:
                        AlwaysStoppedAnimation<Color>(Colors.white),
                        reverseAnimationCurve: Curves.bounceInOut,
                        snackbarStatus: (val) {
                          print(val);
                        },
                        snackStyle: SnackStyle.FLOATING,

                        userInputForm: Form(
                          child: Row(
                            children: [
                              Expanded(
                                  child:TextField()
                              )
                            ],
                          ),
                        )
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}
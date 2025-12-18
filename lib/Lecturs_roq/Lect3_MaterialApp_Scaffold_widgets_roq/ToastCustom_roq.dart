import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(Toast_Custom_Simple_Roq());
}

class Toast_Custom_Simple_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Roq App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ToastHomePage(),
    );
  }

  const Toast_Custom_Simple_Roq();
}

class ToastHomePage extends StatefulWidget {
  @override
  _ToastHomePageState createState() {
    return _ToastHomePageState();
  }
}

class _ToastHomePageState extends State<ToastHomePage> {
  FToast? fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast?.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Toast Roq App"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              ElevatedButton(
                child: Text("Show Toast with it's properties"),
                onPressed: () {
                  showToast();
                },
              ),
              ElevatedButton(
                child: Text("Show Custom Toast"),
                onPressed: () {
                  showCustomToast();
                },),],),));}

  void showToast() {
    Fluttertoast.showToast(
        msg: "Hi D.Ruqaih Salman with Toast properies!!",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 15,
        backgroundColor: Colors.purple,
        textColor: Colors.amberAccent);
  }

  showCustomToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text("This is a Custom Toast by D.Ruqaih Salman"),
        ],
      ),
    );

    // fToast?.showToast(
    //     child: toast,
    //     toastDuration: Duration(seconds: 5),
    //     gravity: ToastGravity.BOTTOM,
    //     fadeDuration: Duration(milliseconds: 5000),
    //     //positionedToastBuilder: (context, child) {
    //       positionedToastBuilder: (BuildContext context, Widget? child,gravity) { // لاحظ استخدام Widget?
    //         return Positioned(
    //           child: child?? Container(), // التعامل مع null
    //           top: 300.0,
    //           left: 16.0,
    //         ); }
    //     });
    fToast?.showToast(
        child: toast,
        toastDuration: Duration(seconds: 5),
        gravity: ToastGravity.BOTTOM,
        fadeDuration: Duration(milliseconds: 5000),
        // قم بتعديل الدالة لتطابق التعريف الجديد
        positionedToastBuilder: (context, child, gravity) {
          // الدالة الآن تُرجع Widget مباشرةً وهو Positioned
          return Positioned(
            child: child, // الـ child هنا مضمون أنه ليس null
            top: 300.0,
            left: 16.0,
          );
        }
    );
  }
}

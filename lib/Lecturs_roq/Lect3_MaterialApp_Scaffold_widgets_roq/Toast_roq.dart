
////////////////////////////  Toast Class///////////////////

import 'package:flutter/material.dart';

//import '../../../Updated_plugins_roq/fluttertoast_roq2024.dart';

import 'package:fluttertoast/fluttertoast.dart';


class Toast_Widget_roq extends StatefulWidget {
  const Toast_Widget_roq({Key? key,}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Toast_Widget_roq> {
  FToast? fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast!.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            buildText("Simple Toast "),
            ElevatedButton(

              child: Text('click to show Toast'),
              onPressed: showToast_simple_funroq,
            ),
            buildText("Toast with some properties"),
            ElevatedButton(
              child: Text(' show '),
              onPressed: showToast_with_properties_funroq,
            ),
            buildText("Toast with some properties as gravity"),
            ElevatedButton(
              child: Text('show'),
              onPressed: showToast_with_gravity_funroq,
            ),
            buildText("Custom Toast "),
            ElevatedButton(
              child: Text("Show "),
              onPressed: showCustomToast,
            ),
            /*  buildText(" Mutliple built-in designs of Motion Toast "),
            ElevatedButton(
              onPressed: () {
                _displaySuccessMotionToast();
              },
              child: const Text('Success Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayWarningMotionToast();
              },
              child: const Text('Warning Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayErrorMotionToast();
              },
              child: const Text('Error Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayInfoMotionToast();
              },
              child: const Text('Info Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayDeleteMotionToast();
              },
              child: const Text('Delete Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayCustomMotionToast();
              },
              child: const Text('Custom Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayCenterMotionToast();
              },
              child: const Text('Center Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayTopMotionToast();
              },
              child: const Text('Top Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayTwoColorsMotionToast();
              },
              child: const Text('Two-color Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displayTransparentMotionToast();
              },
              child: const Text('Transparent Motion Toast'),
            ),
            ElevatedButton(
              onPressed: () {
                _displaySimultaneouslyToasts();
              },
              child: const Text('Simultaneously taosts'),
            ),*/
          ],
        ),
      ),
    );
  }

  buildText(String text_roq) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Divider(
            height: 10,
            thickness: 3,
          ),
          Text(
            "$text_roq",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],
            ),
          ),
          const Divider(
            height: 10,
            thickness: 3,
          ),
        ],
      ),
    );
  }

  void showToast_simple_funroq() {
    Fluttertoast.showToast(msg: 'This is toast notification by Ruqaih Salman');
  }

  void showToast_with_properties_funroq() {
    Fluttertoast.showToast(
      msg: 'This is toast notification by Ruqaih Salman',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.purple,
      textColor: Colors.white,
    );
  }

  void showToast_with_gravity_funroq() {
    Fluttertoast.showToast(
        msg: 'This is toast notification by Ruqaih Salman',
        gravity: ToastGravity.CENTER);
  }

  showCustomToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Text("This is a Custom Toast by D.Ruqaih Salman"),
    );

    fToast!.showToast(
      child: toast,
      toastDuration: Duration(seconds: 3),
    );
  }
}


import 'package:flutter/material.dart';

class WillPopScope_Roq extends StatefulWidget {
  const WillPopScope_Roq({Key? key}) : super(key: key);

  @override
  State<WillPopScope_Roq> createState() => _WillPopScope_RoqState();

}
class _WillPopScope_RoqState extends State<WillPopScope_Roq> {
  DateTime? currentBackPressTime;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool result = onPressBackButton();
        return await Future.value(result);
      },
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("WillPopScope Demo")),
        body: Center(
          child: Text("Tap back button to leave this page"),
        ),
      ),
    );
  }

  bool onPressBackButton() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context)..hideCurrentSnackBar..showSnackBar(SnackBar(
        content: Text("Tap back again to leave."),));

     /* ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Tap back again to leave."),));*/

      /*===> deprecated
      scaffoldKey.currentState?..hideCurrentSnackBar()..showSnackBar(
            SnackBar(content: Text("Tap back again to leave."),));*/
      return false;
    }
    return true;
  }}
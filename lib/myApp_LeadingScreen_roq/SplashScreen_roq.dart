import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myApp_Data_Settings_roq/constants.dart';




class SplashScreen_Roq extends StatefulWidget {

  @override
  SplashScreenState createState() => new SplashScreenState();

  const SplashScreen_Roq({super.key});
}

class SplashScreenState extends State<SplashScreen_Roq>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 10);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(IntroScreen_rout_Roq);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 5));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       //=> color: Colors.white,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 180.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  /*Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                      child: new Image.asset(
                        'assets/images/powered_by.png',
                        height: 25.0,
                        fit: BoxFit.scaleDown,
                      )),*/
                  Container(height: 20),
                  Text(" Version 1.0.0", style: TextStyle(
                    fontStyle: FontStyle.italic,
                     color: Colors.grey[500]
                  )),
                  Container(height: 20),
                  Container( height: 5, width: 80,
                    child: LinearProgressIndicator(
                      //=>valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1E88E5)),
                      backgroundColor: Colors.grey[300],
                    ),
                  ),

                ],
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  //'assets_roq/lect_assets_roq/images_roq/logo_roq.png',
                  'assets_roq/assets_lect_roq/images_roq/logo_roq.png',
                  width: animation.value * 250,
                  height: animation.value * 250,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

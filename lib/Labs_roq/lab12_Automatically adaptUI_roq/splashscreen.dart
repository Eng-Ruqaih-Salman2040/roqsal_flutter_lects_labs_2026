/*convert the next UI flutter code to make Flutter apps responsive with use responsive_sizer plugin.
Automatically adapt UI to different screen sizes. Responsiveness made simple.*/

import 'dart:async';

import 'dart:async';


import 'package:flutter/material.dart';

import 'splashscreen_roq.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {

    super.initState();
    Timer(
      Duration(seconds: 7), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen())),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 160,),

          Row(
            children: [
              // SizedBox(width: 120,),
              // Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 40),),
              Image.asset("assets_roq/assets_labs_roq/images/team_illustration.png", height: 450.0,
                width: 400.0,),
            ],
          ),
          SizedBox(height: 70,),
          Row(
            children: [
              SizedBox(width: 110,),
              Text(" Mad With ", style: TextStyle(color: Color(0xFF929794), fontSize: 14),),
              Image.asset("assets_roq/assets_labs_roq/images/app_logo.png", height: 24, width: 24,),
              Text(" in Flutter ", style: TextStyle(color: Color(0xFF929794), fontSize: 14),),
            ],
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 160,),
            Text("By Habibullah", style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline),)
          ],)
          // SizedBox(height: 40,),
          // Row(
          //   children: [
          //     SizedBox(width: 40,),
          //     Text("Hay Travellers !!!", style: TextStyle(color: Colors.white, fontSize: 25),),
          //   ],
          // ),

        ],
      ),
    );
  }
}

class OnBoardingScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("OnBoarding Screen"),
      ),
    );
  }
}



import 'dart:async';

import 'package:flutter/material.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/lab11_Automatically%20adaptUI_roq/splashscreen.dart';


import 'splashscreen_roq.dart';

class SplashScreen_Roq2 extends StatefulWidget {
  const SplashScreen_Roq2({Key? key}) : super(key: key);

  @override
  _SplashScreen_Roq2State createState() => _SplashScreen_Roq2State();
}

class _SplashScreen_Roq2State extends State<SplashScreen_Roq2> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 7),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/doctorsplash.gif",
                height: screenHeight * 0.6,
                width: screenWidth * 0.8,
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " Mad With ",
                style: TextStyle(
                  color: Color(0xFF929794),
                  fontSize: screenWidth * 0.03,
                ),
              ),
              Image.asset(
                "assets/love.png",
                height: screenWidth * 0.05,
                width: screenWidth * 0.05,
              ),
              Text(
                " in Flutter ",
                style: TextStyle(
                  color: Color(0xFF929794),
                  fontSize: screenWidth * 0.03,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "By Habibullah",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.04,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
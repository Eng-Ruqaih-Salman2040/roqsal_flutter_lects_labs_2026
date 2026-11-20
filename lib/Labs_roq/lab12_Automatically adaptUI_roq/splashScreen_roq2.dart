import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/lab11_Automatically%20adaptUI_roq/splashscreen.dart';
import 'splashscreen.dart';




class SplashScreen_Roq2 extends StatefulWidget {
  const SplashScreen_Roq2({Key? key}) : super(key: key);

  @override
  _SplashScreen_Roq2State createState() => _SplashScreen_Roq2State();
}

class _SplashScreen_Roq2State extends State<SplashScreen_Roq2> {
  Timer? _navigationTimer;

  @override
  void initState() {
    super.initState();
    _navigationTimer = Timer(const Duration(seconds: 7), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  void dispose() {
    _navigationTimer?.cancel();
    super.dispose();
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
                "assets_roq/assets_labs_roq/images/team_illustration.png",
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
              Icon(Icons.favorite, color: Colors.red, size: screenWidth * 0.05),
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
                "Flutter Responsive Demo",
                style: TextStyle(
                  color: Colors.black54,
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
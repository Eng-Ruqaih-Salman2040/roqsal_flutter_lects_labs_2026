/*
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen_Roq extends StatefulWidget {
  const SplashScreen_Roq({Key? key}) : super(key: key);

  @override
  _SplashScreen_RoqState createState() => _SplashScreen_RoqState();
}

class _SplashScreen_RoqState extends State<SplashScreen_Roq> {
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
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(height: 16.h),
              Row(
                children: [
                  Image.asset(
                    "assets/doctorsplash.gif",
                    height: 45.h,
                    width: 40.w,
                  ),
                ],
              ),
              SizedBox(height: 7.h),
              Row(
                children: [
                  SizedBox(width: 11.w),
                  Text(
                    " Mad With ",
                    style: TextStyle(
                      color: Color(0xFF929794),
                      fontSize: 14.sp,
                    ),
                  ),
                  Image.asset(
                    "assets/love.png",
                    height: 3.5.h,
                    width: 3.5.h,
                  ),
                  Text(
                    " in Flutter ",
                    style: TextStyle(
                      color: Color(0xFF929794),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  SizedBox(width: 16.w),
                  Text(
                    "By Habibullah",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/

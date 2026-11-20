
import 'package:flutter/material.dart';



import 'login_withoutResponsive.dart';
import 'sk_onboarding_model_roq.dart';
import 'sk_onboarding_screen_roq_WithoutRespon.dart';
import 'sk_onboarding_screen_roq_WithRespon.dart';

class OnBoardingScreen_Roq extends StatefulWidget {
  const OnBoardingScreen_Roq({Key? key}) : super(key: key);

  @override
  _OnBoardingScreen_RoqState createState() => _OnBoardingScreen_RoqState();
}

class _OnBoardingScreen_RoqState extends State<OnBoardingScreen_Roq> {
  @override

  final pages = [
    SkOnboardingModel_Roq(
        title: 'Take Prescription from Professor',
        description:
        'Easily find your required doctors and you will get doctors in wide range',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets_roq/assets_labs_roq/images/flutter.jpg'),
    SkOnboardingModel_Roq(
        title: '24 Hours Service For COVID-19',
        description:
        'We make Service fast, simple and free-no matter if you order online or Physically',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets_roq/assets_labs_roq/images/avatar.png'),
    SkOnboardingModel_Roq(
        title: 'Best Online Doctor Appointment App',
        description: 'Appoint the Desired Doctor For which You Have Problem',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets_roq/assets_labs_roq/images/team_illustration.png'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SKOnboardingScreen_Roq2(
        bgColor: Colors.white,
        themeColor: const Color(0xFFFFBE9D),
        pages: pages,
        skipClicked: (value) {
          print("Skip");
        },
        getStartedClicked: (value) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage_Roq()));
          //print("Get Started");
        },
      ),

    );
  }
}

class LogInPage_Roq extends StatefulWidget {
  const LogInPage_Roq({Key? key}) : super(key: key);

  @override
  _LogInPage_RoqState createState() => _LogInPage_RoqState();
}

class _LogInPage_RoqState extends State<LogInPage_Roq> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

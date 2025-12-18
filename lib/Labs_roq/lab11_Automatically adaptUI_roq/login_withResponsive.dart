/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../lab4_widget_samples_roq/widgets_with_navigation_sample_roq/screens/register_page.dart';
import '../lab4_widget_samples_roq/widgets_with_navigation_sample_roq/screens/welcome_page.dart';



class LogInPage_Roq extends StatefulWidget {
  const LogInPage_Roq({Key? key}) : super(key: key);

  @override
  _LogInPage_RoqState createState() => _LogInPage_RoqState();
}

class _LogInPage_RoqState extends State<LogInPage_Roq> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            Row(
              children: [
                Container(
                  height: height * 0.08,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFFBE9D).withOpacity(0.5),
                        spreadRadius: 8,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: width * 0.3),
                      Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: width * 0.3),
                      Icon(Icons.login),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),
            Row(
              children: [
                SizedBox(width: width * 0.05),
                Text(
                  "Enter Your Email Address:",
                  style: TextStyle(
                      color: Color(0xFFFFBE9D),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.all(height * 0.01),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(40.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: height * 0.01),
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Email',
                          )))),
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                SizedBox(width: width * 0.05),
                Text(
                  "Enter  Strong Password: ",
                  style: TextStyle(
                      color: Color(0xFFFFBE9D),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.all(height * 0.01),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(40.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          top: height * 0.01),
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Password',
                          )))),
            ),
            SizedBox(height: height * 0.03),
            Container(
              height: height * 0.06,
              width: width * 0.12,
              decoration: BoxDecoration(
                color: Color(0xFFFFBE9D),
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.double_arrow_outlined)),
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                SizedBox(width: width * 0.05),
                Text("Already Have an Account? "),
                SizedBox(width: width * 0.2),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => RegisterPage_Roq()));
                  },
                  child: Text(
                    "SignUp Now",
                    style: TextStyle(
                        color: Color(0xFFFFBE9D),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Row(
              children: [
                SizedBox(width: width * 0.4),
                Text(
                  "OR",
                  style: TextStyle(fontSize: height * 0.02),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),
                SizedBox(height: height * 0.02),
                SignInButton(
                  Buttons.FacebookNew,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                SizedBox(width: width * 0.35),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomePage()));
                  },
                  child: Container(
                    height: height * 0.05,
                    width: width * 0.35,
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.02),
                        Text(
                          "Demo Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.double_arrow_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBE9D),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/

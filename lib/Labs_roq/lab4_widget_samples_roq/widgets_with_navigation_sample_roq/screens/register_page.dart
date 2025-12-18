import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../widgets/widget.dart';
import '../constants.dart';
import 'signin_page.dart';

class RegisterPage_Roq extends StatefulWidget {
  @override
  _RegisterPage_RoqState createState() => _RegisterPage_RoqState();
}

class _RegisterPage_RoqState extends State<RegisterPage_Roq> {
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image(
            width: 24,
            color: Colors.white,
            image: Svg('assets/images/back_arrow.svg'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),//kHeadline,
                          ),
                          Text(
                            "Create new account to get started.",
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          TextField_UI_Roq(

                            hintText: 'Name',
                            inputType: TextInputType.name,
                          ),
                          TextField_UI_Roq(
                            hintText: 'Email',
                            inputType: TextInputType.emailAddress,
                          ),
                          TextField_UI_Roq(
                            hintText: 'Phone',
                            inputType: TextInputType.phone,
                          ),

                          PasswordField_UI_Roq(
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                             MaterialPageRoute(
                                builder: (context) => SignInPage_Roq(),
                              ),
                            );
                          },
                          child:
                        Text(
                          "Sign In",
                          style: TextStyle(
                            //color: Colors.grey,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton_UI_Roq(
                      buttonName_roq: 'Register',
                      onPressed_roq: () {},
                      bgColor_roq: Colors.white,
                      textColor_roq: Colors.black87,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

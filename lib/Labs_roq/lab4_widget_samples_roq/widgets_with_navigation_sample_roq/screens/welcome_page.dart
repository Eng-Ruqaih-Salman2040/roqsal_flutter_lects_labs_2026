import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/screen.dart';
import '../widgets/widget.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Image(
                          image:
                              AssetImage('assets/images/team_illustration.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ruqaih Salman Team\nCollaboration.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        "Bring together your files, your tools, project and people.Including a new mobile and desktop application.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),//kBodyText,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextButton_UI_Roq(
                      bgColor_roq: Colors.white,
                      buttonName_roq: 'Register',
                      onPressed_roq: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage_Roq()));
                      },
                      textColor_roq: Colors.black87,
                    )),
                    Expanded(
                        child: TextButton_UI_Roq(
                      bgColor_roq: Colors.transparent,
                      buttonName_roq: 'Sign In',
                      onPressed_roq: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => SignInPage_Roq(),
                            ));
                      },
                      textColor_roq: Colors.white,
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


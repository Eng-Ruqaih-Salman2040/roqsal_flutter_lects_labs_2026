import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Labs_roq/lab3_UI_widgets_roq/loginUI_roq.dart';

void main() => runApp(MaterialApp(home: RichText_Roq()));

class RichText_Roq extends StatelessWidget {
  static String rutename = 'TextSpan_Widget_roq';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextSpan Roq App"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
                child: RichText(
                  text: TextSpan(
                      text: '\n\n\nThis is Text Link to internal page: \n\n',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: [
                        TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                        TextSpan(
                          text: ' Sign up',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //Navigator.of(context)..pushNamed('/Textfield_Widget_Roq');
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Form_Roq_Ex2()),
                              );
                            },
                        ),
                        TextSpan(
                          text: '\n\n\nThis is Text Link to External Website page: \n\n\n',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                            //<-----launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
                              launchUrl(Uri.parse('https://docs.flutter.io/flutter/services/UrlLauncher-class.html'));
                            },
                        ),
                        TextSpan(text: 'Click  ', style: TextStyle(fontSize: 25)),
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Icon(Icons.add_circle, color: Colors.red),
                          ),
                        ),
                        TextSpan(text: ' to add', style: TextStyle(fontSize: 25)),


                      ]),
                )),
          ),
        ));
  }

 const RichText_Roq();
}

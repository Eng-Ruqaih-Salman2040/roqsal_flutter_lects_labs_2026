import 'package:flutter/material.dart';

import '../../Labs_roq/lab6_navigation_samples_roq/nav_dialogeSamples_roq.dart';

void main() {
  runApp(MaterialApp(
    home: Buttons_Demo_Roq(),
  ));
}

class Buttons_Demo_Roq extends StatefulWidget {
  @override
  _State createState() => _State();

  const Buttons_Demo_Roq();
}

class _State extends State<Buttons_Demo_Roq> {
  TextEditingController nameController_roq = TextEditingController();
  TextEditingController passwordController_roq = TextEditingController();
  bool pass_visi_roq = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TextField Controller Roq'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: nameController_roq,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'Enter Your Name',
                        suffixIcon: Icon(Icons.person_outline)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: passwordController_roq,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          suffixIcon: IconButton(
                            icon: Icon(pass_visi_roq
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                pass_visi_roq = !pass_visi_roq;
                              });
                            },
                          )),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: pass_visi_roq,
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Alert Message"),
                          // Retrieve the text which the user has entered by
                          // using the TextEditingController.
                          content: RichText(
                            text: TextSpan(
                              children: [
                                new TextSpan(
                                  text: 'The name for User is :  ',
                                  style: new TextStyle(color: Colors.black),
                                ),
                                new TextSpan(
                                  text: nameController_roq.text,
                                  style: new TextStyle(color: Colors.purple),
                                ),
                                TextSpan(
                                  text:
                                      ' . If you want to check the information about user plz click ',
                                  style: new TextStyle(color: Colors.black),
                                ),
                                WidgetSpan(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CustomEventDialog()),
                                      );
                                    },
                                    child: Text('hear'),
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          actions: <Widget>[
                            new OutlinedButton(
                              child: new Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                )
              ],
            )));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: Textfield_Controller_Roq_Ex(),));
}

class Textfield_Controller_Roq_Ex extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Textfield_Controller_Roq_Ex> {
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
                        suffixIcon: Icon(Icons.person_outline)
                    ),
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
                            icon: Icon(pass_visi_roq ? Icons.visibility :
                            Icons.visibility_off),
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
                          content: Text(nameController_roq.text),
                          actions: <Widget>[
                            new TextButton(
                              child: new Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
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

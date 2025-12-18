import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Textfield_Controller_Roq(),
  ));
}

class Textfield_Controller_Roq extends StatefulWidget {
  @override
  _State createState() => _State();

  const Textfield_Controller_Roq();
}

class _State extends State<Textfield_Controller_Roq> {
  TextEditingController nameController_roq = TextEditingController();
  TextEditingController passwordController_roq = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true, // Ensures layout adjusts when keyboard appears
        appBar: AppBar(
          title: Text('TextField Controller Roq'),
        ),
        body: SingleChildScrollView (
          child: Padding(
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
                        hintText: 'Enter Your Name', suffixIcon: Icon(Icons.person_outline)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: passwordController_roq,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter Password',
                          suffixIcon: Icon(Icons.visibility_off)
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      /*shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0)),*/
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.all(12.0),
                    ),
                    child: const Text('Sign In',
                        style: TextStyle(color: Colors.white)),
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
                                },) ], );  },  ); },),], )),
        ));} }

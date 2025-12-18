import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Textfield_onChange_Roq(),
  ));
}

class Textfield_onChange_Roq extends StatefulWidget {
  @override
  _State createState() => _State();

  const Textfield_onChange_Roq();


}

class _State extends State<Textfield_onChange_Roq> {
  String? name_roq;
  String? password_roq;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text('TextField Controller Roq'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                     // controller: nameController_roq,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'Enter Your Name',
                      ),
                      onChanged: ( Nameval){
          name_roq=Nameval;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
          
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter Password',
                      ),
                      onChanged: ( Passval){
                        password_roq=Passval;
                      },
                    ),
                  ),
                  ElevatedButton(
                    // style: ElevatedButton.styleFrom(
                    //   /*shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(24.0)),*/
                    //   backgroundColor: Colors.blue,
                    //   padding: const EdgeInsets.all(12.0),
                    // ),
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
                            content: Text(name_roq!),
                            actions: <Widget>[
                              new TextButton(
                                child: new Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },) ], );  },  ); },),], )),
        ));} }

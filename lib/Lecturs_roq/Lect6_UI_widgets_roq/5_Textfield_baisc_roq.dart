import 'package:flutter/material.dart';

void main() => runApp((MaterialApp(home: Textfield_Baisc_Roq())));

class Textfield_Baisc_Roq extends StatefulWidget {
  @override
  _State createState() => _State();

  const Textfield_Baisc_Roq();
}

class _State extends State<Textfield_Baisc_Roq> {
  String? n;
  TextEditingController t_val=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text('TextField Roq Example'),
        ),
        body: 
        Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'Enter Your Name',
                          suffixIcon: Icon(Icons.person_3_outlined)
                      ),
                    ),
                  ),
                  //--------------   How to obscure text field value and keyboardType ?
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter Password',
                          suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter Email',
                        suffixIcon: Icon(Icons.email),
              
                      ),
              
                    ),
                  ),
                  //------------- How to control the size of TextField value?
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscureText: true,
                      maxLength: 8,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ID ',
                        hintText: 'Enter Your ID',
                      ),
                    ),
                  ),
                   //------------ How to make TextField expandable?
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                     //<--------Errror with maxlines obscureText: true,
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Commend ',
                        hintText: 'Enter Your Commends',
                      ),
                   controller: t_val,
                   /*   onChanged: (val)
                      {
                       n=val;
                      },*/
                    ),
                  ),
              
                  //Replace deprecated RaisedButton with ElevatedButton
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        /*shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0)),*/
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(12.0),
                      ),
                      onPressed: () {},
                      child: const Text('Sign In',
                          style: TextStyle(color: Colors.white))),
                ],
              ),
            )));
  }
}

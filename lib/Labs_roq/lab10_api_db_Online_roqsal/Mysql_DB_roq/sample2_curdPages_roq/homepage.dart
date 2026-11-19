import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'listdata.dart';
import 'loginform.dart';


class HomePage extends StatelessWidget {
   String? uname;
  HomePage(  [this.uname]);
  // final String text;
  // HomePage({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Text("Homepage"),),
        body: Padding(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              "Welcome, $uname admin",
              style: TextStyle(fontFamily: "Netflix", fontSize: 18,color:Colors.pink,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image(image: AssetImage("images/dashboard.png")),
          SizedBox(
            height: 40,
          ),

          Container(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                child: Text(
                  "View Data",
                  style: TextStyle(fontFamily: "Netflix", color: Colors.white),
                ),
                onPressed: (){
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }
                    )
                  );
                }
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
             //color: Colors.blue,
                child: Text(
                  "Logout",
                  style:
                  TextStyle(fontFamily: "Netflix",color: Colors.white),
                ),
                onPressed: (){
                  Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginForm();
                    }));
                    logout(context);
                }),
          ),
        ],
      ),
    ));
  }
}

void logout(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text("You have successfully logged out!"),
        action: SnackBarAction(
            label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
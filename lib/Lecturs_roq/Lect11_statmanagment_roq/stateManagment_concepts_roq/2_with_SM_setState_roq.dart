import 'package:flutter/material.dart';

class With_SM_setState_Roq extends StatefulWidget {
  const With_SM_setState_Roq({Key? key}) : super(key: key);

  @override
  State<With_SM_setState_Roq> createState() => _With_SM_setState_RoqState();
}

class _With_SM_setState_RoqState extends State<With_SM_setState_Roq> {
String name="empty";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("SM setState"),),
    body: Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Welcome : $name")),
          SizedBox(height: 10,),
          MaterialButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("Do Something"),
   onPressed: (){

            setState(() {
              name="Ruqaih Salman";
              print("Name is after change :$name");
            });
          })
        ],
      ),
    ),

    );
  }
}

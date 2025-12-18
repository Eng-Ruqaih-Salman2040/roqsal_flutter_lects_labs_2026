import 'package:flutter/material.dart';

class Without_StateManagment_Roq extends StatefulWidget {
  const Without_StateManagment_Roq({Key? key}) : super(key: key);

  @override
  State<Without_StateManagment_Roq> createState() => _Without_StateManagment_RoqState();
}

class _Without_StateManagment_RoqState extends State<Without_StateManagment_Roq> {
String name="empty";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Ex1_Without State Manegment"),),
    body: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Center(
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

              name="Ruqaih Salman";
              print("Name is after change :$name");
              // setState(() {
              //
              // });



            })
          ],
        ),
      ),
    ),

    );
  }
}

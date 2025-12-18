import 'package:flutter/material.dart';

class Butttttton extends StatefulWidget {
  Butttttton()
  {

  }
  @override
  State<Butttttton> createState() => _ButtttttonState();
}

class _ButtttttonState extends State<Butttttton> {
String name="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [

              Text("The val : $name"),
              ElevatedButton(
                  child: Text("Enter"),
                    onPressed: () {
                      setState(() {
                        name="Alui";
                      });

                     /* set

*/
                    },),
                Text("The val : $name"),
                Text("The val : $name"),
                Text("The val : $name"),
                Text("The val : $name"),



            ],
          ),
        ));
  }
}

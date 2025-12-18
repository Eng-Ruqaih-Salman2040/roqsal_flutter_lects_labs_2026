import 'package:flutter/material.dart';

void main() {
  runApp(Static_GridView_Roq());
}

class Static_GridView_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Static GridView Roq'),
          ),
          body: GridView(
          //scrollDirection:Axis.vertical,
          shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            //gridDelegate is a property that controls how items are shown in a list.
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20),
            children: [
             Card(color: Colors.amber.shade200,),
              Card(color: Colors.blue.shade300,),
              Card(color: Colors.pink.shade400),
              Card(color: Colors.red.shade200, ),
              Card(color: Colors.purple.shade300,),
              Card(color: Colors.green.shade400),
              Card(color: Colors.teal.shade200,),
              Card(color: Colors.green.shade300,),
              Card(color: Colors.indigo.shade400),
            ],
          ),
        ));
  }

  const Static_GridView_Roq();
}

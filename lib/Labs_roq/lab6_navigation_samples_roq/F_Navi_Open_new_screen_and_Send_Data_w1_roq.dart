

import 'package:flutter/material.dart';

import '../../myApp_Data_Settings_roq/constants.dart';


class Route_With_Send_Data_Roq extends StatelessWidget {
  const Route_With_Send_Data_Roq({Key? key}) : super(key: key);

  static const List<String> fruits = ["Apples", "Oranges", "Bananas"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: [
              buildText_funroq("Choose any item to Send it :"),
              Expanded(child:ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,

                    child: ListTile(
                      title: Text("${fruits[index]}"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NaviReceiveData(fruits[index])));
                      },
                    ),
                  );
                },
              ),
              ),
            ],
          ),
        ),

    );
  }
}

class NaviReceiveData extends StatelessWidget {
  final String fruit;

  NaviReceiveData(this.fruit);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Received Data: "),
            Text(
              fruit,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
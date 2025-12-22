import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/constants.dart';


class Route_With_Return_Data_Roq extends StatefulWidget {
  const Route_With_Return_Data_Roq({Key? key}) : super(key: key);

  @override
  State<Route_With_Return_Data_Roq> createState() => _Route_With_Return_Data_RoqState();
}

class _Route_With_Return_Data_RoqState extends State<Route_With_Return_Data_Roq> {
  final scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text("First Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text("Launch Screen"),
          onPressed: () {
            receiveData(context);
          },
        ),
      ),
    );
  }

  receiveData(BuildContext context) async {
    String result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => NaviReturnData()));

    ScaffoldMessenger.of(context)..hideCurrentSnackBar..showSnackBar(SnackBar(
      content: Text("Received Data: $result"),));

    /*==========> deprecated
    scaffoldKey.currentState?..hideCurrentSnackBar()..showSnackBar(SnackBar(
        content: Text("Received Data: $result"),));*/
  }
}

class NaviReturnData extends StatelessWidget {
  List<String> fruits = ["Apples", "Oranges", "Bananas"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: [
            buildText_funroq("Choose any item to Return it  :"),
        Expanded(child: ListView.builder(
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  child: ListTile(
                    title: Text("${fruits[index]}"),
                    onTap: () {
                      Navigator.pop(context, fruits[index]);
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
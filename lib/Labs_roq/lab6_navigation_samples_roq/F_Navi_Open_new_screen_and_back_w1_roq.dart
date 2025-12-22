import 'package:flutter/material.dart';

//////////////////////////////////// Main Class ///////
class Route_Without_Send_Data_Roq extends StatelessWidget {
  const Route_Without_Send_Data_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:NaviFirstScreen());
  }
}

// First Screen
class NaviFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(color: Colors.orange),
              alignment: Alignment(0, 0),
              child: Text(
                "This is the First Screen",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
           ElevatedButton(
              child: Text("Launch Second Screen"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NaviSecondScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Second Screen
class NaviSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(color: Colors.indigoAccent),
              alignment: Alignment(0, 0),
              child: Text(
                "This is the Second Screen",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              child: Text("Go back to First Screen"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class StackBaisc_Roq extends StatelessWidget {

  // It is the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Roq Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: StackHomePage_Roq(),
    );
  }

  const StackBaisc_Roq();
}
class StackHomePage_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            // Max Size
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.yellow,
              height: 220.0,
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}

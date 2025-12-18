import 'package:flutter/material.dart';

class StackwithPosition_Roq extends StatelessWidget {
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
      home: StackwithPosHomePage(),
    );
  }

  const StackwithPosition_Roq();
}

class StackwithPosHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(" Stack & Position"),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              clipBehavior: Clip.antiAlias,
              //<-- overflow: Overflow.visible, depracated
              children: <Widget>[
                // Max Size Widget
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Top Widget: Green',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Middle Widget',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'Bottom Widget',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}

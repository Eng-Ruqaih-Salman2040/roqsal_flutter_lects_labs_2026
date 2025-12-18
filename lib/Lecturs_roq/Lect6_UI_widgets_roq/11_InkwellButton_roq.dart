import 'package:flutter/material.dart';

void main() => runApp(InkWell_Roq_App());

class InkWell_Roq_App extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  const InkWell_Roq_App();
}

class _MyAppState extends State<InkWell_Roq_App> {
  int _volume = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('InkWell Button Roq App'),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: new Column(
              children: <Widget>[
                InkWell(
                  splashColor: Colors.purpleAccent,
                  highlightColor: Colors.limeAccent,
                  child: Icon(Icons.ring_volume, size: 50),
                  onTap: () {
                    setState(() {
                      _volume += 2;
                    });
                  },
                ),
                Text(_volume.toString(), style: TextStyle(fontSize: 50)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

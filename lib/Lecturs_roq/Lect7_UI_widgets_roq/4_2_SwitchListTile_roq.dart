import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchListTile_Roq extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return switch_button_state_roq();
  }

  const SwitchListTile_Roq();
}

class switch_button_state_roq extends State<SwitchListTile_Roq> {
  //bool sw1_val=true;
  bool swT_val = false;

  void onChangedswT_val(bool value) {
    setState(() {
      swT_val = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Switch App Roq'),
          backgroundColor: Colors.purpleAccent.shade700,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
                padding: EdgeInsets.all(3.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SwitchListTile(
                          value: swT_val,
                          onChanged: onChangedswT_val,
                          title: Text('Reading mode'),
                          subtitle:
                          Text('The screen is optomized for reading.'),
                          // activeColor: Colors.lightGreenAccent.shade700,
                          // inactiveTrackColor: Colors.red.shade700,
                          secondary: Icon(Icons.brightness_4))
                    ])), ),));
  }
}


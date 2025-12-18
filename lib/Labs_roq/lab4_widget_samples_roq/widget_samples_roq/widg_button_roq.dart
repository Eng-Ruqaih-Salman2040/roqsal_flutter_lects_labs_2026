import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ElevatedButton_Roq()));
}

class ElevatedButton_Roq extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  const ElevatedButton_Roq();
}

class _MyAppState extends State<ElevatedButton_Roq> {
  String msg = 'ElevatedButton Example by Ruqaih Salman';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('ElevatedButton Roq Example'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(children: <Widget>[
                Text(
                "The most basic usage only requires you to pass the required parameters"),

            ElevatedButton(
              child: Text('RuqaihSalman.com'),
              onPressed: () {
                print('Pressed');
              },
            ),

            Text("The example of using ElevatedButton.icon is shown below."),

            ElevatedButton.icon(
              label: Text('RuqaihSalman.com'),
              icon: Icon(Icons.web),
              onPressed: () {
                print('Pressed');
              },
            ),

            Text(
                "To delect when the user does long press on the button, you can pass anothercallback function as onLongPress."),

            ElevatedButton(
            child: Text('RuqaihSalman.com'),
            onPressed: () {
              print('Short Pressed');
            },
            onLongPress: () {
              print('Long press');
            },
          ),
          Text(" Setting Shadow and Elevation"),
          /*The characteristic of Elevated Button is the elevation increases when it's on pressed state. It's also possible to set the initial elevation by passing elevation parameter. For this kind of button, the elevation is set to 0 if the button is disabled. An elevation increase of 2 will be applied if the state is hovered or focused, while pressing the button increases the elevation by 6.
          When the elevation is above 0, the shadow becomes visible. Changing the shadow color can be done by setting shadowColor property.
        */
          ElevatedButton(
            child: Text('RuqaihSalman.com'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              shadowColor: Colors.red,
              elevation: 5, ),
            onPressed: () {
              print('Pressed');
            },
          ),
          Text("Setting Border"),
          //This button doesn't come with default border.
          //If you want to show border, you can pass a BorderSide as side parameter.
          ElevatedButton(
            child: Text('RuqaihSalman.com'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.teal,
              side: BorderSide(color: Colors.red, width: 5),
            ),
            onPressed: () {
              print('Pressed');
            },
          ),
          Text("Setting Shape"),
          //Changing the button shape can be done by passing an
          //OutlinedBorder as shape parameter. For example, you can pass a
          //BeveledRectangleBorder.
          ElevatedButton(
            child: Text('RuqaihSalman.com'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              print('Pressed');
            },
          )
          ]),)), ); }}

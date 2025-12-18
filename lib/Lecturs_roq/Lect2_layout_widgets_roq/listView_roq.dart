import 'package:flutter/material.dart';


class ListView_Roq_Ex extends StatelessWidget {
  const ListView_Roq_Ex({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Basic List Roq';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            Divider(height: 10),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(Grideview_extent_Roq());

class Grideview_extent_Roq extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  MyGridScreen({Key? key}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.extent Roq App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: GridView.extent(
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 100.0,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('First', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Second', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Third', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Four', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Fifth', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Six', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
            ],
          )),
    );
  }
}

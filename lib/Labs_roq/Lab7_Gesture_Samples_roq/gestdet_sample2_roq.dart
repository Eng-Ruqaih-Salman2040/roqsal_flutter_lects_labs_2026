import 'package:flutter/material.dart';
import 'package:gestures/gestures.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GestureDetector_Sample2_Roq(),
    );
  }
}

class GestureDetector_Sample2_Roq extends StatefulWidget {
  const GestureDetector_Sample2_Roq({Key? key}) : super(key: key);

  @override
  State<GestureDetector_Sample2_Roq> createState() => _GestureDetector_Sample2_RoqState();
}

class _GestureDetector_Sample2_RoqState extends State<GestureDetector_Sample2_Roq> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: CustomGestureDetector(
        behavior: HitTestBehavior.opaque,
        gestures: [
          GestureLine(AxisDirection.right),
        ],
        onGestureEnd: (bool success) {
          if (success) _incrementCounter();
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
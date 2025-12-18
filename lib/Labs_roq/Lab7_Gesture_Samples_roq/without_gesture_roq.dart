import 'package:flutter/material.dart';
//import 'dart:math';

void main() {
  runApp(const Without_Gesture_Roq());
}
class Without_Gesture_Roq extends StatelessWidget {
  const Without_Gesture_Roq({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gesture Detector Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:  const Handl_Gesture_Roq(),
    );
  }
}
class Handl_Gesture_Roq extends StatelessWidget {
  const Handl_Gesture_Roq({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.1, vertical: height * 0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  const [
            MyCardWidget(),
            MyFavoriteIconWidget()
          ],
        ),
      ),
    );
  }
}

class MyFavoriteIconWidget extends StatefulWidget {
  const MyFavoriteIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyFavoriteIconWidget> createState() => _MyFavoriteIconWidgetState();
}

class _MyFavoriteIconWidgetState extends State<MyFavoriteIconWidget> {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite_border,
      size: 40,
    );
  }
}



class MyCardWidget extends StatefulWidget {
  const MyCardWidget({
    Key? key,
  }) : super(key: key);
  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}
class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: SizedBox(
        height: 300,
        width: 300,
      ),
      color: Colors.yellow,
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GestureDetector_Sample3_Roq(),
  ));
}

class GestureDetector_Sample3_Roq extends StatefulWidget {
  @override
  _GestureDetector_Sample3_RoqState createState() => _GestureDetector_Sample3_RoqState();
}

class _GestureDetector_Sample3_RoqState extends State<GestureDetector_Sample3_Roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onVerticalDragStart: (DragStartDetails details) {
            print('start Vertical');
            print(details);
          },
          onVerticalDragEnd: (DragEndDetails details) {
            print('end Vertical');
            print(details);
          },
          onVerticalDragUpdate: (DragUpdateDetails details) {
            print('update Vertical');
            print(details);
          },
          onHorizontalDragStart: (DragStartDetails details) {
            print('start Horizontal');
            print(details);
          },
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            print('update Horizontal');
            print(details);
          },
          onHorizontalDragEnd: (DragEndDetails details) {
            print('end Horizontal');
            print(details);
          },
        ),
      ),
    );
  }
}
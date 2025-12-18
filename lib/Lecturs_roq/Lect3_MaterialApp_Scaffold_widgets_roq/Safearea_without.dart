import 'package:flutter/material.dart';
void main()
{
  runApp(Safearea_Without_Roq());
}
class Safearea_Without_Roq extends StatelessWidget {
  const Safearea_Without_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(color: Colors.green),
            child: Text(
              'Hello, Flutter!',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ),
      ),
    );
  }}
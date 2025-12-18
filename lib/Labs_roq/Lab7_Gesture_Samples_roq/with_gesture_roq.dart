import 'dart:math';

import 'package:flutter/material.dart';
//import 'dart:math';

void main() {
  runApp(const With_Gesture_Roq());
}
class With_Gesture_Roq extends StatelessWidget {
  const With_Gesture_Roq({Key? key}) : super(key: key);
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
class Handl_Gesture_Roq extends StatefulWidget {
  const Handl_Gesture_Roq({Key? key}) : super(key: key);

  @override
  State<Handl_Gesture_Roq> createState() => _Handl_Gesture_RoqState();
}

class _Handl_Gesture_RoqState extends State<Handl_Gesture_Roq> {
  Color bgColor = Colors.yellow;

  bool makeCircular = false;
  bool isSelected = false;
  /////////////////////////////// scale param
  double _scaleFactor = 0.5;
  double _baseScaleFactor = 0.5;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.1, vertical: height * 0.2),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:   [
              GestureDetector(
                onDoubleTap: (){
                  setState(() {
                    bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                  });
                },
                onLongPress: (){
                  setState(() {
                    makeCircular = !makeCircular;
                  });
                },
                onScaleStart: (ScaleStartDetails details){
                  _baseScaleFactor = _scaleFactor;

                },
                onScaleUpdate: (ScaleUpdateDetails details){
                  setState(() {
                    _scaleFactor = _baseScaleFactor * details.scale;
                  });
                },
                onScaleEnd: (ScaleEndDetails details){
                  // return to initial scale
                  _scaleFactor = _baseScaleFactor;
                },
                child:   Transform.scale(
                  scale: _scaleFactor,
                  child: Card(
                    shape: makeCircular? const CircleBorder(): const RoundedRectangleBorder(),
                    child: const SizedBox(
                      height: 300,
                      width: 300,
                    ),
                    color: bgColor,
                  ),
                ),
              ),
              SizedBox(height: 2,),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child:  Icon(
                    isSelected ? Icons.favorite: Icons.favorite_border,
                    size: 40,
                    color: isSelected? Colors.red: Colors.black ,
                  )),
              SizedBox(height: 2,),

        GestureDetector(
          // show snackbar on tap of child
              onTap: () {
                const snackBar =
                SnackBar(content: Text(" You just Tapped on the Button"));

                // ignore: deprecated_member_use
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The tap button
              child:
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  //<-----color: Theme.of(context).buttonColor,
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('Tap Container'),
              ),
        ),

              InkResponse(
                child: Card(
                  child: Text("Click on Me"),
                ),

                onTap: (){
                  print("Card is tapped.");
                },

                onDoubleTap: ()=> print("Card is double tapped."),

                onLongPress: (){
                  print("Card is long pressed.");
                },
              )
        ]
      ),
    )));
  }
}


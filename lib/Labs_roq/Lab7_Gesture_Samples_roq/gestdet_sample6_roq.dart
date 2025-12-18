import 'package:flutter/material.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';
//////////////////// Example 3
import 'package:zoom_widget/zoom_widget.dart';

class ZoomableWidget1_Roq extends StatefulWidget {
  final Widget child;

  const ZoomableWidget1_Roq( {Key? key, required this.child}) : super(key: key);
  @override
  _ZoomableWidget1_RoqState createState() => _ZoomableWidget1_RoqState();
}

class _ZoomableWidget1_RoqState extends State<ZoomableWidget1_Roq> {
  Matrix4 matrix = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return MatrixGestureDetector(
      onMatrixUpdate: (Matrix4 m, Matrix4 tm, Matrix4 sm, Matrix4 rm) {
        setState(() {
          matrix = m;
        });
      },
      child: Transform(
        transform: matrix,
        child: widget.child,
      ),
    );
  }
}

////////////////////////////// Example 2 /////////////////////////

//import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';
class ZoomableWidget extends StatefulWidget {
  final Widget child;

  const ZoomableWidget({Key? key, required this.child}) : super(key: key);
  @override
  _ZoomableWidgetState createState() => _ZoomableWidgetState();
}

class _ZoomableWidgetState extends State<ZoomableWidget> {
  Matrix4 matrix = Matrix4.identity();
  Matrix4 zerada =  Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){
        setState(() {
          matrix = zerada;
        });
      },
      child: MatrixGestureDetector(
        shouldRotate: false,
        onMatrixUpdate: (Matrix4 m, Matrix4 tm, Matrix4 sm, Matrix4 rm) {
          setState(() {
            matrix = m;
          });
        },
        child: Transform(
          transform: matrix,
          child: widget.child,
        ),
      ),
    );
  }
}

/////////////////////////////////// Eample 3 use Zoom Widget ////////////////////
class ZoomWidget_Roq extends StatefulWidget {
  const ZoomWidget_Roq({Key? key}) : super(key: key);

  @override
  State<ZoomWidget_Roq> createState() => _ZoomWidget_RoqState();
}

class _ZoomWidget_RoqState extends State<ZoomWidget_Roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Zoom Widget"),),
    body:  Zoom(
      initTotalZoomOut: true,
      child: Center(
        child: FlutterLogo(
          size: 1000,
        ),
      ),


    ));

  }
}

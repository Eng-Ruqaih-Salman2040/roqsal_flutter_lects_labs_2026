/*Write a Flutter widget that displays an image from a URL and
allows the user to zoom in and out.
Program:*/
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main()
{
  runApp(ZoomableImage(imageUrl:"https://pynative.com/wp-content/uploads/2021/06/for-loop-range.png"));
}
class ZoomableImage extends StatefulWidget {
  final String imageUrl;
  ZoomableImage({required this.imageUrl});
  @override
  _ZoomableImageState createState() => _ZoomableImageState();
}
class _ZoomableImageState extends State<ZoomableImage> {
  double _minScale = 1.0;
  double _maxScale = 3.0;
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: EdgeInsets.all(20.0),
      scaleEnabled: true,

      transformationController: TransformationController(),
      panEnabled: false,
      minScale: _minScale,
      maxScale: _maxScale,
      child: CachedNetworkImage(
        imageUrl: widget.imageUrl,
        fit: BoxFit.contain,
        placeholder: (context, url) => CircularProgressIndicator(),errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CachedNetworkImage(
            imageUrl: 'https://picsum.photos/id/525/350/250',
            placeholder: (BuildContext context, String url) =>
            const CircularProgressIndicator(),
            errorWidget: (BuildContext context, String url, Object error) =>
            const Icon(
              Icons.no_photography_outlined,
              size: 120,
            ),
          ),
        ),
      ),
    );
  }
}
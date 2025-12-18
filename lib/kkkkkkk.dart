import 'package:flutter/material.dart';

class Routing extends StatefulWidget {
  final String name;

  const Routing({required this.name});

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {
  @override
  Widget build(BuildContext context) {
    return Text("User Name : ${widget.name}");
  }
}

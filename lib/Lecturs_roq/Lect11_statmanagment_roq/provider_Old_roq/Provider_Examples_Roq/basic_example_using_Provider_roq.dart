import 'dart:collection'; // used in test.dart
import 'package:flutter/foundation.dart'; // used in test.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});


}

void main() {
  runApp(
    Provider(
      create: (_) => Person(name: "Yohan", age: 25),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Class'),
      ),
      body: Center(
        child: Text(
          '''
          Hi ${context.select((Person p) => p.name)}!
          You are ${Provider.of<Person>(context).age} years old''',
        ),
      ),
    );
  }
}

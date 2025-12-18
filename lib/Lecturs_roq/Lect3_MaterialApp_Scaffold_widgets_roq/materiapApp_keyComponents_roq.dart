import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue,
        colorScheme:
        ColorScheme.light(primary: Colors.blue, secondary: Colors.orange),
        buttonTheme: ButtonThemeData(buttonColor: Colors.blue),
        scaffoldBackgroundColor: Colors.teal.shade100,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.lightGreen.shade300),
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        colorScheme: ColorScheme.dark(
            primary: Colors.deepPurple, secondary: Colors.amber),
        buttonTheme: ButtonThemeData(buttonColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.black,
        floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.blueGrey),
      ),
      themeMode: ThemeMode.system,
      home: HomeScreen(),
      routes: {
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* Add your onPressed logic here*/
          print("I am Floating Action Button");
        },
        child: Icon(Icons.search),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Second Screen!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* Add your onPressed logic here*/
          print("I am Floating Action Button");
        },
        child: Icon(Icons.search),
      ),
    );
  }
}

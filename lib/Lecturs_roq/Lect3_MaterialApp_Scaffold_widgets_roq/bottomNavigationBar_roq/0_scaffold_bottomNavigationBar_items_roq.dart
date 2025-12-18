import 'package:flutter/material.dart';

class BottomNavigationBarItem_Roq extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

 const BottomNavigationBarItem_Roq();
}

class _MyAppState extends State<BottomNavigationBarItem_Roq> {
  int selected=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SafeArea(
            child: Scaffold(
                bottomNavigationBar:
                BottomNavigationBar(
                    items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
        ],onTap: (int index){
                  selected=index;
                }
                  ,
                ),

                // other properties...
                )));
  }
}

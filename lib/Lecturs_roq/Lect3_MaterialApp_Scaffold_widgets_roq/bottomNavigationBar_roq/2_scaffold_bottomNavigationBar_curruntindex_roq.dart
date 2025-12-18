import 'package:flutter/material.dart';

class BottomNavigationBar_curruntIndex_Roq extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

 const BottomNavigationBar_curruntIndex_Roq();
}

class _MyAppState extends State<BottomNavigationBar_curruntIndex_Roq> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SafeArea(
            child: Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.pink,
                    unselectedItemColor: Colors.black54,
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
        ],
                  onTap: _onTap,
                  currentIndex: _selectedIndex,

    )
    )));}

// _onTap function
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}


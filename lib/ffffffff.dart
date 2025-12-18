import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int id = 0;

  String? name;

  String? pass;

int select_roq=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kjkj"),
        flexibleSpace: Container(),
        centerTitle: true,
        leading: Icon(Icons.search),
        actions: [Icon(Icons.search), Icon(Icons.search), Icon(Icons.search)],
        backgroundColor: Colors.pink,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListTile(
          leading: Icon(Icons.add_a_photo_outlined),
          title: Text("jkjkhjg"),
          subtitle: Text("jkjhjghfg"),
          trailing: Icon(Icons.ac_unit),
        ),
      ),
      endDrawer: Drawer(),
      persistentFooterButtons:[],
      bottomNavigationBar: BottomNavigationBar(
        items:
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',),





      ],
        currentIndex: select_roq,
        onTap: (int index){
          setState(() {
            select_roq=index;
          });

        },


      ),
    );
  }
}

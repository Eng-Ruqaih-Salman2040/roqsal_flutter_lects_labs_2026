import 'package:flutter/material.dart';

class Scaffold_Properties_Roq extends StatefulWidget {
  @override
  _Scaffold_Properties_RoqState createState() => _Scaffold_Properties_RoqState();

 const Scaffold_Properties_Roq();
}

class _Scaffold_Properties_RoqState extends State<Scaffold_Properties_Roq> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Scaffold'),
      ),


      backgroundColor: Colors.white,



      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xyz"),
              accountEmail: Text("xyz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("xyz"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("abc"),
                )
              ],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),

      endDrawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xyz"),
              accountEmail: Text("xyz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("xyz"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("abc"),
                )
              ],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),

      body: Center(
        child: Text(
          "This is Homepage",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),



      //floatingActionButton
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: (){
            print('I am Floating button');
          }
      ),


      //floatingActionButtonLocation
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,


      //persistentFooterButtons
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
          elevation: 10.0,
            backgroundColor: Colors.green,
    ),
          onPressed: () {},

          child: Icon(
            Icons.print,
            color: Colors.white,
          ),
        ),
    ElevatedButton(
    style: ElevatedButton.styleFrom(
          elevation: 10.0,
      backgroundColor: Colors.blueGrey,),


          onPressed: () {  },
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      ],


      //bottomNavigationBar
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(Icons.add_box),
          ),
        ],
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),


    );
  }
}


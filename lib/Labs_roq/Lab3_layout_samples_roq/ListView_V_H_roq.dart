import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListView_Widget_roq extends StatefulWidget {
  const ListView_Widget_roq({Key? key}) : super(key: key);

  @override
  _ListView_Widget_roqState createState() => _ListView_Widget_roqState();
}

class _ListView_Widget_roqState extends State<ListView_Widget_roq> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text("ListView"),
    ),
    body:SingleChildScrollView(
      child: Column(
        children: [
          buildText_funroq("Baisc ListView Widget"),
           ListView_Roq_Ex(),
          buildText_funroq(" Horizontal ListView Widget"),
           Listview_Horizontal_Ex_Roq(),
        ],
      ),
    )
    )
    );
  }
  buildText_funroq(String text_roq) {
    return
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            const Divider( thickness: 2,),
            Text("$text_roq",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[500],
                  //fontFamily: Utils.ubuntuRegularFont
                ),
            ),
            const Divider( thickness: 2,),
          ],
        ),
      );
  }
}


//////////////////////////////////// Baisc List View Example1/////////////
class ListView_Roq_Ex extends StatelessWidget {
  const ListView_Roq_Ex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Basic List Roq';

    return  ListView(
      shrinkWrap: true,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            Divider(height: 10),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            Divider(height: 10),
          ],


    );
  }
}
//////////////////////////////////Listview_Horizontal EXample2////////////////
class  Listview_Horizontal_Ex_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return  Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          height: 150.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 150.0,
                color: Colors.blue,
                alignment: Alignment.center,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),

              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.green,
                child:
                ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text('Camera'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.yellow,
                child:
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.red,
                child:
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),

              ),
              Container(
                alignment: Alignment.center,
                width: 148.0,
                color: Colors.orange,
                child:
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting'),
                ),

              ),
            ],
          ),


    );
  }
}
////////////////////////////////////



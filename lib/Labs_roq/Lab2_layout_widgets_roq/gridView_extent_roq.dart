import 'dart:math';

import 'package:flutter/material.dart';


import 'gridViewItem_data/gridViewItemroq.dart';
import 'gridViewItem_data/randomColor_model_roq.dart';
import 'gridView_builder_roq.dart';
class GridViewExtent_Roq extends StatefulWidget {

  @override
  _GridViewExtent_RoqState createState() => _GridViewExtent_RoqState();

  const GridViewExtent_Roq();
}

class _GridViewExtent_RoqState extends State<GridViewExtent_Roq> {


  List<GridListItems> items = [
    GridListItems(color:Colors.green,title: 'Bicycle', icon: Icons.directions_bike),
    GridListItems(color:Colors.pink.shade300,title:'Boat', icon: Icons.directions_boat),
    GridListItems(color:Colors.pink.shade300,title: 'Bus', icon: Icons.directions_bus),
    GridListItems(color:Colors.pink.shade300,title: 'Train', icon: Icons.directions_railway),
    GridListItems(color:Colors.pink.shade300,title: 'Walk', icon: Icons.directions_walk),
    GridListItems(color:Colors.pink.shade300,title: 'Contact', icon: Icons.contact_mail),
    GridListItems(color:Colors.green,title: 'Bicycle', icon: Icons.directions_bike),
    GridListItems(color:Colors.pink.shade300,title:'Boat', icon: Icons.directions_boat),
    GridListItems(color:Colors.pink.shade300,title: 'Bus', icon: Icons.directions_bus),
    GridListItems(color:Colors.pink.shade300,title: 'Train', icon: Icons.directions_railway),
    GridListItems(color:Colors.pink.shade300,title: 'Walk', icon: Icons.directions_walk),
    GridListItems(color:Colors.pink.shade300,title: 'Contact', icon: Icons.contact_mail),
    GridListItems(color:Colors.green,title: 'Bicycle', icon: Icons.directions_bike),
    GridListItems(color:Colors.pink.shade300,title:'Boat', icon: Icons.directions_boat),
    GridListItems(color:Colors.pink.shade300,title: 'Bus', icon: Icons.directions_bus),
    GridListItems(color:Colors.pink.shade300,title: 'Train', icon: Icons.directions_railway),
    GridListItems(color:Colors.pink.shade300,title: 'Walk', icon: Icons.directions_walk),
    GridListItems(color:Colors.pink.shade300,title: 'Contact', icon: Icons.contact_mail),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      GridView.extent(
        childAspectRatio: (2 / 2),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        padding: EdgeInsets.all(10.0),
        maxCrossAxisExtent: 200.0,
        children: List.generate(50, (index) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: GridTile(
                footer: Text(
                  'Item $index',
                  textAlign: TextAlign.center,
                  style:TextStyle(color:Colors.white,fontSize:15,fontWeight:FontWeight.bold),
                ),

                child: Icon(Icons.access_alarm,
                    size: 40.0, color: Colors.white),
              ),
            ),
            color: RandomColorModel().getColor(),
            margin: EdgeInsets.all(1.0),
          );
        }),
      ),
    );
  }
}


class GridListItems {
  final Color color;
  final String title;
  final IconData icon;
  GridListItems({required this.color, required this.title, required this.icon});

}
class RandomColorModel {
  Random random = Random();

  Color getColor() {
    return Color.fromARGB(random.nextInt(300), random.nextInt(300),
        random.nextInt(300), random.nextInt(300));
  }
}
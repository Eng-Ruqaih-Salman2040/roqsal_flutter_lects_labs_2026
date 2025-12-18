import 'dart:math';

import 'package:flutter/material.dart';

import 'gridViewItem_data/gridViewItemroq.dart';
import 'gridViewItem_data/randomColor_model_roq.dart';
import 'gridView_builder_roq.dart';

class GridViewCount_Roq extends StatefulWidget {
  @override
  _GridViewCount_RoqState createState() => _GridViewCount_RoqState();

  const GridViewCount_Roq();
}

class _GridViewCount_RoqState extends State<GridViewCount_Roq> {
  List<GridListItems> items = [
    GridListItems(
        color: Colors.green, title: 'Bicycle', icon: Icons.directions_bike),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Boat',
        icon: Icons.directions_boat),
    GridListItems(
        color: Colors.pink.shade300, title: 'Bus', icon: Icons.directions_bus),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Train',
        icon: Icons.directions_railway),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Walk',
        icon: Icons.directions_walk),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Contact',
        icon: Icons.contact_mail),
    GridListItems(
        color: Colors.green, title: 'Bicycle', icon: Icons.directions_bike),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Boat',
        icon: Icons.directions_boat),
    GridListItems(
        color: Colors.pink.shade300, title: 'Bus', icon: Icons.directions_bus),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Train',
        icon: Icons.directions_railway),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Walk',
        icon: Icons.directions_walk),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Contact',
        icon: Icons.contact_mail),
    GridListItems(
        color: Colors.green, title: 'Bicycle', icon: Icons.directions_bike),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Boat',
        icon: Icons.directions_boat),
    GridListItems(
        color: Colors.pink.shade300, title: 'Bus', icon: Icons.directions_bus),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Train',
        icon: Icons.directions_railway),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Walk',
        icon: Icons.directions_walk),
    GridListItems(
        color: Colors.pink.shade300,
        title: 'Contact',
        icon: Icons.contact_mail),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (2 / 1),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        //physics:BouncingScrollPhysics(),
        padding: EdgeInsets.all(10.0),
        children: items
            .map(
              (data) => GestureDetector(
                  onTap: () {
                    /*Navigator.pushReplacement(context,
                      MaterialPageRoute(
                      builder:(context)=>GridViewBuilder_roq()));*/
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("You Clicked : ${data.title}")));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),

                    //  margin:EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    //color:data.color,
                    color: RandomColorModel().getColor(),
                    child: Column(
                      children: [
                        Icon(
                          data.icon,
                          size: 25,
                          color: Colors.black,
                        ),
                        Text(data.title,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            textAlign: TextAlign.center)
                      ],
                    ),
                  )),
            )
            .toList(),
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

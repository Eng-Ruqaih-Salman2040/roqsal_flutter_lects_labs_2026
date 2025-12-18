import 'dart:math';
import 'package:flutter/material.dart';
import 'gridViewItem_data/gridViewItemroq.dart';
import 'gridViewItem_data/randomColor_model_roq.dart';

class GridViewBuilder_Roq extends StatefulWidget {

  @override
  _GridViewBuilder_RoqState createState() => _GridViewBuilder_RoqState();

  const GridViewBuilder_Roq();
}

class _GridViewBuilder_RoqState extends State<GridViewBuilder_Roq> {


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
      GridView.builder(
        itemCount:items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).orientation ==
              Orientation.landscape ? 3: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (2 / 1),
        ),
        itemBuilder: (context,index,) {
          return GestureDetector(
            onTap: (){
              /*Navigator.pushReplacement(context,
                      MaterialPageRoute(
                      builder:(context)=>GridViewBuilder_roq()));*/
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You Clicked : ${items[index].title}")));
            },
            child:Container(
              color: RandomColorModel().getColor(),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(items[index].icon),
                  Text(items[index].title,style: TextStyle(fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          );
        },
      )
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

import 'package:flutter/material.dart';

class MealUISample_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample layout2"),
        backgroundColor: Colors.black54,),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 290,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 20,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset("assets/img_roq/m1.jpg",
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        width: 300,
                        color: Colors.black54,
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          "Spaghetti with Tomato Sauce",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                         softWrap: true,
                          //overflow: TextOverflow.fade,
                        ),
                      ),
                    ) ],  ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(width: 6),
                          Text("20 min"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.work),
                          SizedBox(width: 6),
                          Text("Simple"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.attach_money),
                          SizedBox(width: 6),
                          Text("Affordable"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

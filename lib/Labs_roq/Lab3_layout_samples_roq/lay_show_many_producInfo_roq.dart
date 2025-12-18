import 'package:flutter/material.dart';

class SampleLayout_1_Roq extends StatelessWidget {
  // It is the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Sample Roq', theme: ThemeData(
      primarySwatch: Colors.green,),
      home: MyHomePage_Roq(title: 'Complex layout example'),
    );
  }
}
class MyHomePage_Roq extends StatelessWidget {
  MyHomePage_Roq({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: ListView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
      ProductBox(
      name: "iPhone",
          description: "iPhone is the top branded phone ever",
          price: 55000,
          image: "iphone.png"
      ),
      ProductBox(
          name: "Android",
          description: "Android is a very stylish phone",
          price: 10000,
          image: "android.png"
      ),
      ProductBox(
          name: "Tablet",
          description: "Tablet is a popular device for official meetings",
          price: 25000,
          image: "tablet.png"
      ),
      ProductBox(
          name: "Laptop",
          description: "Laptop is most famous electronic device",
          price: 35000,
          image: "laptop.png"
      ),
      ProductBox(
          name: "Desktop",
          description: "Desktop is most popular for regular use",
          price: 10000,
          image: "computer.png"
      ),
      ProductBox(
          name: "iPhone",
          description: "iPhone is the top branded phone ever",
          price: 55000,
          image: "iphone.png"
      ),
      ProductBox(
          name: "Laptop",
          description: "Laptop is most famous electronic device",
          price: 35000,
          image: "laptop.png"
      ),
      ProductBox(
          name: "iPhone",
          description: "iPhone is the top branded phone ever",
          price: 55000,
          image: "iphone.png"
      ),


    ],
    )
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description,
    required this.price, required this.image}) :
        super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        color:Colors.yellow.shade100,
        height: 110,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Expanded(flex:1,child: Image.asset("assets/img_roq/" + image)),
                  Expanded(flex:2,
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                  this.name, style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )
                              ),
                              Text(this.description),
                              Text("Price: ${this.price}\$"
                              ),
                            ],
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}

import 'package:flutter/material.dart';
void main() {
  runApp(Home_Setstate_Roq());
}
class Home_Setstate_Roq extends StatefulWidget {
  const Home_Setstate_Roq({Key? key}) : super(key: key);

  @override
  State<Home_Setstate_Roq> createState() => _Home_Setstate_RoqState();
}

class _Home_Setstate_RoqState extends State<Home_Setstate_Roq> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SM_Setstate_Roq"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal:10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal:20.0),
                        child:IconButton(onPressed: () { setState(() {
                          counter++;
                        }); }, icon:Icon(Icons.add,size: 40),)
                    ),
Center(child: Text("$counter",style: TextStyle(fontSize: 30),)),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal:20.0),
                        child:IconButton(onPressed: () { setState(() {
                          counter--;
                        }); }, icon:Icon(Icons.remove,size: 40,),)
                    ),

                  ],
                ),
              ],
            ),
          ),

      ),
    );
  }
}

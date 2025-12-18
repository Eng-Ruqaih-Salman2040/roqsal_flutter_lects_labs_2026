import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MaterialApp(home: Icon_Baisc_Roq()));

class Icon_Baisc_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Icon Roq App"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.opacity,
                    ),
                    Icon(
                      Icons.perm_identity,
                    ),
                    Icon(
                      Icons.visibility_off,
                    ),
                  ],
                ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.opacity,
                  size: 50,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.perm_identity,
                  size: 50,
                  color: Colors.red,
                ),
                Icon(
                  Icons.visibility_off,
                  size: 50,
                  color: Colors.purple,
                ),
              ],),

              ],
            ),
          ),
        ));
  }

  const Icon_Baisc_Roq();
}

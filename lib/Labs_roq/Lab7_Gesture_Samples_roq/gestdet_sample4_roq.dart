import 'package:flutter/material.dart';


class GestureDetector_Sample4_Roq extends StatefulWidget {
  const GestureDetector_Sample4_Roq({super.key});

  @override
  State<GestureDetector_Sample4_Roq> createState() => _GestureDetector_Sample4_RoqState();
}

class _GestureDetector_Sample4_RoqState extends State<GestureDetector_Sample4_Roq> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(children: [
          Mywidget(
            tapping: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Courses_class();
                  },
                ));
              });
            },
            myColor: Colors.amber.shade300,
            mychild: "go to courses",
          ),
          Mywidget(tapping: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Images_class();
              },));
            });
          },
            myColor: Colors.red,
            mychild: "go to images",
          ),
          Mywidget(
            tapping: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Quiz_class();
                },));
              });
            },
            myColor: Colors.green,
            mychild: "go to quiz ",
          ),
          // Mywidget(
          //   myColor: Colors.pink.shade300,
          //   mychild: "go to videos ",
          // ),
        ]),
      ),
    );
  }
}

//////////////////////////


class Courses_class extends StatefulWidget {
  const Courses_class({super.key});

  @override
  State<Courses_class> createState() => _Courses_classState();
}

class _Courses_classState extends State<Courses_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome to courses page",
              style: TextStyle(fontSize: 30),
            ),

          ],
        ),
      ),
    );
  }
}

///////////////////////


class Images_class extends StatefulWidget {
  const Images_class({super.key});

  @override
  State<Images_class> createState() => _Images_classState();
}

class _Images_classState extends State<Images_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome to images page",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context,MaterialPageRoute(builder: ((context) {
                      return GestureDetector_Sample4_Roq();
                    })));
                  });
                },
                icon: Icon(Icons.home,size: 40,),
                label: Text(
                  "go back to the home page",
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }
}
//////////////////////////


class Quiz_class extends StatefulWidget {
  const Quiz_class({super.key});

  @override
  State<Quiz_class> createState() => _Quiz_classState();
}

class _Quiz_classState extends State<Quiz_class> {
  bool myvalue = false;
  String mygroupValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome to quizes page",
              style: TextStyle(fontSize: 30),
            ),
            CheckboxListTile(isThreeLine: true,
              subtitle: Text("Eg-Dubai"),
              secondary: Icon(Icons.location_city),
              title: Text("UAE"),
              value: myvalue,
              onChanged: (val) {
                setState(() {
                  myvalue = val!;
                });
              },
            ),
            RadioListTile(secondary: Icon(Icons.man),
              title: Text("male"),
              subtitle: Text("Eg-jordanina"),
              value: "dubai",
              groupValue: mygroupValue,
              onChanged: (val) {
                setState(() {
                  mygroupValue = val.toString();
                });
              },
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context,MaterialPageRoute(builder: ((context) {
                      return GestureDetector_Sample4_Roq();
                    })));
                  });
                },
                icon: Icon(Icons.home,size: 40,),
                label: Text(
                  "go back to the home page",
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }
}

/////////////////////////
class Videos_class extends StatefulWidget {
  const Videos_class({super.key});

  @override
  State<Videos_class> createState() => _Videos_classState();
}

class _Videos_classState extends State<Videos_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome to videos page",
              style: TextStyle(fontSize: 30),
            ),

          ],
        ),
      ),
    );
  }
}
///////////////////////
class Mywidget extends StatelessWidget {
Mywidget({this.myColor, this.mychild,required this.tapping});
String? mychild;

Color? myColor;
Function() tapping ;

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: tapping,
    child: Container(
      color: myColor,
      child: Text(
        "$mychild",
        style: TextStyle(fontSize: 30),
      ),
      alignment: Alignment.center,
      width: double.infinity,
      height: 70,
    ),
  );
}
}

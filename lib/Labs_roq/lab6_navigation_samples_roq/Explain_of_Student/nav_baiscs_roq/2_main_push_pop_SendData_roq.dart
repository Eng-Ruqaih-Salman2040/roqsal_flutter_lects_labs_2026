import 'package:flutter/material.dart';





class Main_Push_Pop_Send_DataEx2_roq extends StatelessWidget {
  const Main_Push_Pop_Send_DataEx2_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Roq App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: Screen1_Ex2_Roq(),
    );
  }
}

////////////////////////// First Page
class Screen1_Ex2_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen Roq'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Text(
                      "Go to Screen2 with send data by Constrcture",
                      style: TextStyle(fontSize: 20),
                    ),

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_){
                          return Screen4("Ruqaih Salman",99);
                        },
                      ),
                      );
                    }),
                ElevatedButton(
                    child: Text(
                      "Go to Screen3 with send data by arguments",
                      style: TextStyle(fontSize: 20),
                    ),

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_){
                          return Screen3_Ex2_Roq();
                        },
                        settings: RouteSettings(
                            arguments: {
                          'name_roq':"Ruqaih Salman",
                          'mark_roq':99,})
                      ),
                      );
                    }),
              ],
            ))
    );
  }
}


////////////////////////// Second Page ////////////////////////
class Screen2_Ex2_Roq extends StatelessWidget {
  //////////////////////////Recive Data from screen 1 by Constructr//////////////////////////////////////


  String str_roq;
   int int_roq;

  Screen2_Ex2_Roq(this.str_roq,this.int_roq);


  ////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("The Data from onother Page :\n", style: TextStyle(fontSize: 18,
                      color: Colors.pink,fontWeight: FontWeight.bold),),
                  Divider(),
                  Text(
                    "Name : $str_roq",
                    style: TextStyle(fontSize: 18,
                        color: Colors.indigo),
                  ),
                  Text(
                    "Mark : $int_roq",
                    style: TextStyle(fontSize: 18,
                        color: Colors.indigo),
                  ),

                ]
            )));
  }
}
class Screen4 extends StatefulWidget {
   Screen4(this.name,this.n);
String name;int n;
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("The Data from onother Page :\n",style: TextStyle(fontSize: 18,
                color: Colors.pink,fontWeight: FontWeight.bold),),
                  Divider(),
                  Text(
                    "Name : ${widget.name}",
                    style: TextStyle(fontSize: 18,
                        color: Colors.indigo,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Mark : ${widget.n}",
                    style: TextStyle(fontSize: 18,
                        color: Colors.indigo,fontWeight: FontWeight.bold),
                  ),

                ]
            )));
  }
}

////////////////////////////// Page 3
class Screen3_Ex2_Roq extends StatelessWidget {
  const Screen3_Ex2_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> routeargs_roq=ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    return Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("The Data from onother Page :\n",style: TextStyle(fontSize: 18,
                      color: Colors.pink),),
                  Divider(),
                  Text(
                    "Name :${routeargs_roq['name_roq']}",
                    style: TextStyle(fontSize: 18,
                        color: Colors.indigo,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Mark : ${routeargs_roq['mark_roq']}",
                    style: TextStyle(fontSize: 18,
                        color: Colors.indigo,fontWeight: FontWeight.bold),
                  ),

                ]
            )));
  }
}



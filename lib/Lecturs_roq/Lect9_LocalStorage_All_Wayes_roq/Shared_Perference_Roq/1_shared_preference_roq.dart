import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(Baisc_Shared_Preferences_Roq());
}

class Baisc_Shared_Preferences_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruqaih Salman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  late SharedPreferences prefs;
  TextEditingController controller = new TextEditingController();
  String name="";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences Roq App"),
      ),
      body:Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height:30,
              ),
              Text(name, style: TextStyle(fontSize: 20),),
              SizedBox(
                height:30,
              ),
              ElevatedButton(
                child:Text("Save"),
                onPressed: ()
                {
                  save();
                },
              ),
              ElevatedButton(
                child:Text("retrieve"),
                onPressed: ()
                {
                  retrieve();
                },
              ),
              ElevatedButton(
                child:Text("Delete"),
                onPressed: ()
                {
                  delete();
                },
              )
            ],
          )
      ),
    );
  }

  save() async
  {
    /*setString(String key, String value)
    setInt(String key, int value):
    setDouble(String key, double value)
    setStringList(String key, List value)
  setBool(String key, bool value)*/
    prefs = await SharedPreferences.getInstance();
    prefs.setString("username", controller.text.toString());

  }

  retrieve() async{
    /*getString(String key)
    getInt(String key)
    getDouble(String key)
    getStringList(String key)
    getBool(String key)*/
    prefs = await SharedPreferences.getInstance();

    setState(() {
      name = prefs.getString("username")!;
    });
  }

  delete() async
  {
    prefs = await SharedPreferences.getInstance();

    setState(() {
      prefs.remove("username");
      name = "";
    });
  }
}

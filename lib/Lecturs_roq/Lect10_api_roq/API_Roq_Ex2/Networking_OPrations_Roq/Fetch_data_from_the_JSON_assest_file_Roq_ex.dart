import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:roqsal_flutter_lects_labs_2026/Lecturs_roq/Lect10_api_roq/API_Roq_Ex2/Networking_OPrations_Roq/welcome_JSON_item_roq_ex.dart';



void main() {
  runApp(Fetch_Data_from_JSON_file_Roq_ex());
}

class Fetch_Data_from_JSON_file_Roq_ex extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview using local json file'),
        ),
        body: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets_roq/assets_api/loadjson/details.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var newData = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 32, bottom: 32, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Welcome()));
                                },
                                child: Text(
                                  newData[index]['title'],
                                  //'Note Title',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                              Text(
                                newData[index]['text'],
                                //'Note Text',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          //SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset(newData[index]['img'],fit: BoxFit.cover),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: newData == null ? 0 : newData.length,
              );
            },
          ),
        ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const Modal_Bottomsheet_Roq());
}

class Modal_Bottomsheet_Roq extends StatelessWidget {
  const Modal_Bottomsheet_Roq({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //First Screen of our App
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar along with Title
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        //Sample Text Written in Center of Screen
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text("Hello"),
        ),
      ),

//Floating Action Button
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                //Scrolling given for content in Container()
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      //Create a Column to display it's content
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      //Create a Column to display it's content
                      child: Column(
                        children: [
                          const Text(
                            "Add Data",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.green,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 10.0),
                          // TextField for giving some Input
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                              ),
                              hintText: "Add Item",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 10),

                          //Button for adding items
                          ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                                textStyle: MaterialStateProperty.all(
                                    const TextStyle(fontSize: 30))),
                            child: const Text("Add"),
                          )
                          // RaisedButton is deprecated
                          // Instead Use ElevatedButton

                          // RaisedButton(
                          // color: Colors.grey,
                          // onPressed: null,
                          // child: Text(
                          //	 "ADD",
                          //	 style: TextStyle(color: Colors.white),
                          // ),
                          // )
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';



class FAB_Roq_App extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();

  const FAB_Roq_App();
}

class _MyAppState extends State<FAB_Roq_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.yellow,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                /* Add your onPressed logic here*/
                print("I am Floating Action Button");
              },
              child: Icon(Icons.add),
            ),
            // other properties...
          )

        ));
  }


}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "o7planning.org",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Flutter Scaffold Example'),
        ),
        body: Center(
          child: Center(
              child:  Builder ( // The Builder return a ElevatedButton
                // We need a context of Scaffold
                builder: (BuildContext ctxOfScaffold)  {
                  return  ElevatedButton(
                    onPressed: ()  {
                      this._showMyBottomSheet(ctxOfScaffold);
                    },
                    child: Icon(Icons.add),
                  );
                },
              )
          ),
        ),
        floatingActionButton: Builder ( // The Builder return a FloatingActionButton
          // We need a context of Scaffold
          builder: (BuildContext ctxOfScaffold)  {
            return  FloatingActionButton(
              onPressed: ()  {
                this._showMyBottomSheet(ctxOfScaffold);
              },
              tooltip: 'Increment Counter',
              child: Icon(Icons.add),
            );
          },
        ),
        bottomNavigationBar:
        BottomAppBar(
          color: Colors.lightGreen[200],
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextButton.icon(icon: Icon(Icons.home), label: Text(""), onPressed: () {},),
              TextButton.icon(icon: Icon(Icons.email), label: Text(""), onPressed: () {},),
            ],
          ),
        )
    );
  }

  // We need a context object of Scaffold to draw Scaffold.bottomSheet.
  void _showMyBottomSheet(BuildContext ctxOfScaffold)  { // context of Scaffold.

    // ScaffoldState.showBottomSheet:
    Scaffold.of(ctxOfScaffold).showBottomSheet(
          (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('BottomSheet'),
                ElevatedButton(
                  child: Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
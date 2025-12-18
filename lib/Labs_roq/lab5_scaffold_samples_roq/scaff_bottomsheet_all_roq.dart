import 'package:flutter/material.dart';

void main() => runApp(Scaff_Bottomsheet_Roq());

class Scaff_Bottomsheet_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottomsheet Roq App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _gKey = new GlobalKey<ScaffoldState>();
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _gKey,
      appBar: AppBar(
        title: Text('BottomSheet Roq'),
      ),

      backgroundColor: Colors.white,

      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(
            // The Builder return a ElevatedButton // We need a context of Scaffold
            builder: (BuildContext ctxOfScaffold) {
              return Container(
                // color: Colors.purpleAccent,
                //height: 200,
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                child: ElevatedButton.icon(
                  onPressed: () {
                    this._showMyBottomSheet_scaff(ctxOfScaffold);
                  },
                  icon: Icon(Icons.add_circle_outline),
                  //icon data for elevated button
                  label: Text("Show BottomSheet for the Scaffold Way1"),
                  //label text
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context)
                          .primaryColorDark //elevated btton background color
                      ),
                ),
              );
            },
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                _show = true;
              });
            },
            icon: Icon(Icons.add_circle_outline),
            label: Text("Show BottomSheet for the Scaffold Way2"),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            child: ElevatedButton.icon(
              onPressed: () {
                this._showMyBottomSheet_Dialog(context);
              },
              icon: Icon(Icons.add_circle_outline),
              //icon data for elevated button
              label: Text("Show Dialog containing a  ModalBottomSheet"),
              //label text
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .primaryColorDark //elevated btton background color
                  ),
            ),
          ),
          ElevatedButton.icon(
            label:
                const Text("Show Dialog containing a Persistent Bottom Sheet"),
            onPressed: () {
              displayBottomSheet_funRoq();
            },
            icon: Icon(Icons.add_circle_outline),
          ),
        ],
      )),

      bottomSheet: _showBottomSheet(),
      //floatingActionButton
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: () {
            print('I am Floating button');
          }),

      //floatingActionButtonLocation
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      //persistentFooterButtons
      persistentFooterButtons: <Widget>[
        ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.print,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 10.0,
              backgroundColor: Colors.green,
            )),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            elevation: 10.0,
          ),
          onPressed: () {},
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      ],

      //bottomNavigationBar
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen[200],
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.home),
              label: Text(""),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: Icon(Icons.email),
              label: Text(""),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  // We need a context object of Scaffold to draw Scaffold.bottomSheet.
  void _showMyBottomSheet_scaff(BuildContext ctxOfScaffold) {
    // context of Scaffold. // ScaffoldState.showBottomSheet:

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

  void _showMyBottomSheet_Dialog(BuildContext context) {
    // Call showModalBottomSheet(), this function open a Dialog
    // and return Future object.
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          //height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
    ;
  }

  Widget? _showBottomSheet() {
    if (_show == true) {
      return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey.shade200,
            alignment: Alignment.center,
            child: ElevatedButton(
              child: Text("Close Bottom Sheet"),
              style: ElevatedButton.styleFrom(
               //<-------- onPrimary: Colors.white,
               //<-------- primary: Colors.green,
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                _show = false;
                setState(() {});
              },
            ),
          );
        },
      );
    } else {
      return null;
    }
  }

  void displayBottomSheet_funRoq() {
    _gKey.currentState?.showBottomSheet((context) {
      return Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("Close Persistent Bottom Sheet"),
          style: ElevatedButton.styleFrom(
            //onPrimary: Colors.white,
            foregroundColor: Colors.white,
            //primary: Colors.green,
            backgroundColor: Colors.green,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      );
    });
  }
}

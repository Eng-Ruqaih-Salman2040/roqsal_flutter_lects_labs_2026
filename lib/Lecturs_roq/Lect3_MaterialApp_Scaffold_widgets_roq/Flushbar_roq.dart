import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';

void main() {
  runApp(Flushbar_Roq_Ex_All());
}

class Flushbar_Roq_Ex_All extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlushBar Roq App Title ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FlushbarHomePage(),
    );
  }

 const Flushbar_Roq_Ex_All();
}

class FlushbarHomePage extends StatefulWidget {
  @override
  _FlushbarHomePageState createState() => _FlushbarHomePageState();
}

class _FlushbarHomePageState extends State<FlushbarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FlushBar Roq App"),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Flutter Snackbar Example - using Flushbar library",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.none),
                    textAlign: TextAlign.center,
                  ),
                ),
                MaterialButton(
                  child: Text(
                    "Simple",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.orange,
                  onPressed: () {
                    show_Simple_Flushbar(context);
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Text With Message n Icon",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    show_Title_n_message_Flushbar(context);
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Flush Bar Helper",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    show_FlushbarHelper(context);
                  },
                ),
                MaterialButton(
                  child: Text(
                    "Customized Flush bar",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    show_Custom_Flushbar(context);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

//Simple Flushbar with a button
void show_Simple_Flushbar(BuildContext context) {
  Flushbar(
    // There is also a messageText property for when you want to
    // use a Text widget and not just a simple String
    message: 'Hello from a Flushbar Roq App',
    // Even the button can be styled to your heart's content
    mainButton: TextButton(
      child: Text(
        'Click Me',
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
      onPressed: () {},
    ),
    duration: Duration(seconds: 3),
    // Show it with a cascading operator
  )..show(context);
}

void show_Title_n_message_Flushbar(BuildContext context) {
  Flushbar(
    title: 'Success Roq',
    message: 'Form Submitted successfully by Ruqaih Salman',
    icon: Icon(
      Icons.done_outline,
      size: 28,
      color: Colors.green.shade300,
    ),
    leftBarIndicatorColor: Colors.blue.shade300,
    duration: Duration(seconds: 3),
  )..show(context);
}

void show_FlushbarHelper(BuildContext context) {
  FlushbarHelper.createInformation(
    title: 'Exit',
    message: 'Do you want to close the app ?',
  ).show(context);
}

void show_Custom_Flushbar(BuildContext context) {
  Flushbar(
    duration: Duration(seconds: 3),
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(10),

    backgroundGradient: LinearGradient(
      colors: [Colors.green.shade800, Colors.greenAccent.shade700],
      stops: [0.6, 1],
    ),
    boxShadows: [
      BoxShadow(
        color: Colors.black45,
        offset: Offset(3, 3),
        blurRadius: 3,
      ),
    ],
    // All of the previous Flushbars could be dismissed
    // by swiping down
    // now we want to swipe to the sides
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    // The default curve is Curves.easeOut
    forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    title: 'Flush_Roq',
    message: ' This is a customized Snackar by Ruqaih Salman',
  )..show(context);
}

import 'package:flutter/material.dart';

void main() => runApp(BottomSheetPersistent_Roq_App());

class BottomSheetPersistent_Roq_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        // use Material 3
        //useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: PersistentHomePage(),
    );
  }

  const BottomSheetPersistent_Roq_App();
}

class PersistentHomePage extends StatefulWidget {
  @override
  _PersistentHomePageState createState() {
    return _PersistentHomePageState();
  }
}

class _PersistentHomePageState extends State<PersistentHomePage> {
  @override
  bool _show = false;
  final _gKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Scaffold(
      key: _gKey,
      appBar: AppBar(
        title: Text("PersistentBottomSheet Roq App"),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: const Text('Click to Show PersistentBottomSheet',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () => displayBottomSheet_funRoq())
              ],
            )),
      ),
    );
  }

  void displayBottomSheet_funRoq() {
    _gKey.currentState?.showBottomSheet((context) {
      return Container(
        width: double.infinity,
        height: 250,
        color: Theme.of(context).primaryColorLight,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PersistentBottomSheet",
                textScaleFactor: 2,
                style: TextStyle(fontWeight: FontWeight.bold)),
            ElevatedButton(
              child: Text("Close Persistent Bottom Sheet"),
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    });
  }
}

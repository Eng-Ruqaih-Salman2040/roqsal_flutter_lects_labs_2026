import 'package:flutter/material.dart';

void main() => runApp(Baisc_SnackBar_Roq());

class Baisc_SnackBar_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Roq App Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Roq App'),
        ),
        body: SnackBarPage(),
      ),
    );
  }

  const Baisc_SnackBar_Roq();
}

class SnackBarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('Yay! A SnackBar by Ruqaih Salman!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          ));

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          //////////////////////////////////////

          //  Or   Scaffold.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}

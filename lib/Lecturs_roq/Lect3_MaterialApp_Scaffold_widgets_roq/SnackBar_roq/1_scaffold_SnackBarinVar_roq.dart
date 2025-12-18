import 'package:flutter/material.dart';

void main() => runApp(Var_of_SnackBar_Roq());

class Var_of_SnackBar_Roq extends StatelessWidget {

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

 const  Var_of_SnackBar_Roq();
}

class SnackBarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final SnackBar  snackBar_roq = SnackBar(
            content: const Text('Yay! A SnackBar by Ruqaih Salman!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          //////////////////////////////////////
          ScaffoldMessenger.of(context).showSnackBar(snackBar_roq);
          //  Or   Scaffold.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}

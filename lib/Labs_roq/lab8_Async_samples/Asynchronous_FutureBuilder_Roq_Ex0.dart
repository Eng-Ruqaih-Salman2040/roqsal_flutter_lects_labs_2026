import 'package:flutter/material.dart';

class Future_Builder_Roq_Ex0 extends StatefulWidget {
  const Future_Builder_Roq_Ex0({Key? key}) : super(key: key);

  @override
  _Future_Builder_Roq_Ex0State createState() => _Future_Builder_Roq_Ex0State();
}

class _Future_Builder_Roq_Ex0State extends State<Future_Builder_Roq_Ex0> {

  int info_funRoq(int a) {
    a=a+100;
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: buildFuture(),
        builder: (ctx_roq, snapshot_roq) {
          return Scaffold(
              appBar: AppBar(
                  title: Text(snapshot_roq.hasData
                      ? "The Future value is:${snapshot_roq.data}"
                      : "FutureBilder Roq App")),
            body:Center(
              child: snapshot_roq.connectionState==ConnectionState.waiting?
                  CircularProgressIndicator():
                  Text("Done By Ruqaih Salman"))
            );


        });
  }

  Future<int> buildFuture() =>
      Future.delayed(Duration(seconds: 4), () => info_funRoq(2));
}

import 'package:flutter/material.dart';

class Lifecycle_of_Widget_Roq_Ex extends StatefulWidget {
  const Lifecycle_of_Widget_Roq_Ex({Key? key}) : super(key: key);

  @override
  _Lifecycle_of_Widget_Roq_ExState createState() =>
      _Lifecycle_of_Widget_Roq_ExState();
}

class _Lifecycle_of_Widget_Roq_ExState
    extends State<Lifecycle_of_Widget_Roq_Ex> {
  ///////////////////////////////////////////// //////////////////////////////////
  @override
  void initState() {
    // TODO: implement initState
    print("initState was called");
    super.initState();
  }

  ////////////////////////////////////////////////////////////////////////////////
  @override
  void didUpdateWidget( Lifecycle_of_Widget_Roq_Ex oldWidget) {
    print("didUpdateWidget was called");
    super.didUpdateWidget(oldWidget);
  }

  //////////////////////////////////////////////////////////////////////////////
  @override
  void dispose() {
    super.dispose();
    print("dispose was called");
  }


  ////////////////////////////////////////////////////////////////////////////////
  int counter_roq_LFC = 0;
int n=0;
  @override
  Widget build(BuildContext context) {
    print("build was called ${++n}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifecycle Roq App'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter_roq_LFC", style: TextStyle(fontSize: 45)),
            ElevatedButton(child: Text("Go To Another Roq Page"),
              onPressed: () =>
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (Ctx_roq) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text('Roq New Page'),
                          ),
                          body: null,
                        );
                      })),
            )
          ],),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter_roq_LFC++;
            print("setState was called");
          });
        },
      ),
    );
  }
}

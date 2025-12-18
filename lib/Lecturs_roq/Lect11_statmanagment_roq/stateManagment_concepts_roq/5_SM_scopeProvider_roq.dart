import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

//////////////////////////////// Ex1_Scope Providers Error /////////////////

/*class SM_ScopeProviders_Roq extends StatelessWidget {
  SM_ScopeProviders_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ex1_Without State Manegment"),
      ),
      body: Column(
        children: [
          ChangeNotifierProvider(
              create: (context) => Provider_Roq(),
              child: Center(child: Text("Welcome : "))),
          SizedBox(
            width: 5,
          ),
          Consumer<Provider_Roq>(
            builder: (context, prov_roq, child) {
              print("Consumer Text1");
              return Text("${prov_roq.name}");
            },
          ),
          MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Do Something"),
              onPressed: () {})
        ],
      ),
    );
  }
}

class Provider_Roq extends ChangeNotifier {
  String name = "empty";

  changText_Funroq() {
    name = "Ruqaih Salman";
    notifyListeners();
  }
}*/

//////////////////////////////// Ex2_Scope Providers Correct /////////////////
class SM_ScopeProviders_Roq extends StatelessWidget {
  const SM_ScopeProviders_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SM Scope Providers"),
      ),
      body: ChangeNotifierProvider(
          create: (context) => Provider_Roq(),
          child:Column(
        children: [
           Center(child: Text("Welcome : ")),
          SizedBox(
            width: 5,
          ),
          Consumer<Provider_Roq>(
            builder: (context, prov_roq, child) {
              print("Consumer Text1");
              return Text("${prov_roq.name}");
            },
          ),
          MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Do Something"),
              onPressed: () {})
        ],
      ),
    )
    );
  }
}

class Provider_Roq extends ChangeNotifier {
  String name = "empty";

  changText_Funroq() {
    name = "Ruqaih Salman";
    notifyListeners();
  }
}
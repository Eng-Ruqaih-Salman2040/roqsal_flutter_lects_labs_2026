import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SM_without_Selector_Roq extends StatelessWidget {
  const SM_without_Selector_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProviderOne_Roq(),
        child: Scaffold(
            appBar: AppBar(
              title: Text("SM Without Selector"),
            ),
            body: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ListView(
                  children: [
                    Center(child:
                    Consumer<ProviderOne_Roq>(
                      builder: (context, provOne_roq, child) {
                        print("Consumer Text1");
                        return Text("Welcome : ${provOne_roq.showSomething1}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child:
                    Consumer<ProviderOne_Roq>(
                      builder: (context, provTow_roq, child) {
                        print("Consumer Text2");
                        return Text("Welcome : ${provTow_roq.showSomething2}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderOne_Roq>(
                        builder: (context, provOne_roq, child) {
                          print("Consumer Button1");
                      return MaterialButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text("Do Something1"),
                          onPressed: () {
                            provOne_roq.doSomething1_Funroq();
                            print(
                                "Name is after change :${provOne_roq.showSomething1}");
                          });
                    }),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderOne_Roq>(
                        builder: (context, provTow_roq, child) {
                          print("Consumer Button2");
                          return MaterialButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Do Something2"),
                              onPressed: () {
                                provTow_roq.doSomething2_Funroq();
                                print(
                                    "Name is after change :${provTow_roq.showSomething2}");
                              });
                        })
                  ],
                ))));
  }
}

class ProviderOne_Roq with ChangeNotifier {
  var showSomething1 = "Show Something1";
  var showSomething2 = "Show Something2";

  doSomething1_Funroq() {
    showSomething1 = "Yes Provider One";
    notifyListeners();
  }
  doSomething2_Funroq() {
    showSomething2 = "Yes Provider two";
    notifyListeners();
  }
}

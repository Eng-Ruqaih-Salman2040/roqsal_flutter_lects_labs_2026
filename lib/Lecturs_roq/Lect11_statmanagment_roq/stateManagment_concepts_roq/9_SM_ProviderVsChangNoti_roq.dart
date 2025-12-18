import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SM_Provider_vs_ChangNotif_Roq extends StatelessWidget {
  const SM_Provider_vs_ChangNotif_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ProviderOne_Roq>(
        create: (context) => ProviderOne_Roq(),
        child: Scaffold(
            appBar: AppBar(
              title: Text("SM Provider vs ChangNoti"),
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
                      builder: (context, provOne_roq, child) {
                        print("Consumer Text2");
                        return Text("Welcome : ${provOne_roq.showSomething2}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
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
                                provOne_roq.doSomethingOne_Funroq();
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
                                provTow_roq.doSomethingTwo_Funroq();
                                print(
                                    "Name is after change :${provTow_roq.showSomething2}");
                              });
                        })
                  ],
                ))));
  }
}

class ProviderOne_Roq {
  var showSomething1 = "Show Something1";
  var showSomething2 = "Show Something2";

  doSomethingOne_Funroq() {
    showSomething1 = "Yes Provider One";
    //notifyListeners();

  }
  doSomethingTwo_Funroq() {
    showSomething2 = "Yes Provider Two";
    //notifyListeners();

  }
}

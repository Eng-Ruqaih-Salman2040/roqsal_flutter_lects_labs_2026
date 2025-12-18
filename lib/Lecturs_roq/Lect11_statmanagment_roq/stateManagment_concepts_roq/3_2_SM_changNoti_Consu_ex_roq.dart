import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class With_SM_ChangNoti_Consum_ExRoq extends StatelessWidget {
  const With_SM_ChangNoti_Consum_ExRoq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProviderOne_Roq(),
        child: Scaffold(
            appBar: AppBar(
              title: Text("SM Consumer Ex"),
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
                    Consumer<ProviderOne_Roq>(
                        builder: (context, provOne_roq, child) {
                          print("Consumer Button");
                      return MaterialButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text("Do Something"),
                          onPressed: () {
                            provOne_roq.doSomething_Funroq();
                            print(
                                "Name is after change :${provOne_roq.showSomething1}");
                          });
                    })
                  ],
                ))));
  }
}

class ProviderOne_Roq extends ChangeNotifier {
  var showSomething1 = "Show Something1";
  var showSomething2 = "Show Something2";

  doSomething_Funroq() {
    showSomething1 = "Yes Provider One";
    notifyListeners();
  }
}

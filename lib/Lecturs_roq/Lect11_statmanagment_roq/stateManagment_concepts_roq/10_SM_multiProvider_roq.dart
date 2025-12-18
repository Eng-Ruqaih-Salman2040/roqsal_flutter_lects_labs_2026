import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SM_MultiProvider_Roq extends StatelessWidget {
  const SM_MultiProvider_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => ProviderOne_Roq()),
    ChangeNotifierProvider(
    create: (context) => ProviderTwo_Roq()),

       Provider(
            create: (context) => ProviderThree_Roq()),
        ],
        child: Scaffold(
            appBar: AppBar(
              title: Text("SM MultiProvider"),
            ),
            body:
            Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child:
                Column(
                  children: [
///////////////////////////////////////// Provider One ///////////////////////////
                    Center(child:
                    Consumer<ProviderOne_Roq>(
                      builder: (context, provOne_roq, child) {
                        //print("Consumer Text1 from Provider One");
                        return Text("Welcome : ${provOne_roq.showSomething1}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child:
                    Consumer<ProviderOne_Roq>(
                      builder: (context, provone_roq, child) {
                        //print("Consumer Text2 from Provider One");
                        return Text("Welcome : ${provone_roq.showSomething2}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderOne_Roq>(
                        builder: (context, provOne_roq, child) {
                          //print("Consumer Button1 from Provider One");
                          return MaterialButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Do Something1"),
                              onPressed: () {
                                provOne_roq.doSomething1_Funroq();
                                print( "Name is after change :${provOne_roq.showSomething1}");
                              });
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderOne_Roq>(
                        builder: (context, provone_roq, child) {
                          //print("Consumer Button2 from Provider One");
                          return MaterialButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Do Something2"),
                              onPressed: () {
                                provone_roq.doSomething2_Funroq();
                                print("Name is after change :${provone_roq.showSomething2}");
                              });
                        }),

                    /////////////////// Provider Two ////////////////////////
                    Center(child:
                    Consumer<ProviderTwo_Roq>(
                      builder: (context, provTwo_roq, child) {
                        //print("Consumer Text1 from Provider One");
                        return Text("Welcome : ${provTwo_roq.showSomething1}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child:
                    Consumer<ProviderTwo_Roq>(
                      builder: (context, provTow_roq, child) {
                        //print("Consumer Text2 from Provider One");
                        return Text("Welcome : ${provTow_roq.showSomething2}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderTwo_Roq>(
                        builder: (context, provTwo_roq, child) {
                          //print("Consumer Button1 from Provider One");
                          return MaterialButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Do Something1"),
                              onPressed: () {
                                provTwo_roq.doSomething1_Funroq();
                                print( "Name is after change :${provTwo_roq.showSomething1}");
                              });
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderTwo_Roq>(
                        builder: (context, provTow_roq, child) {
                          //print("Consumer Button2 from Provider One");
                          return MaterialButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Do Something2"),
                              onPressed: () {
                                provTow_roq.doSomething2_Funroq();
                                print("Name is after change :${provTow_roq.showSomething2}");
                              });
                        }),
///////////////////////////////////////// Provider Three ///////////////////////////

                    Center(child:
                    Consumer<ProviderThree_Roq>(
                      builder: (context, provTwo_roq, child) {
                        //print("Consumer Text1 from Provider One");
                        return Text("Welcome : ${provTwo_roq.showSomething1}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child:
                    Consumer<ProviderThree_Roq>(
                      builder: (context, provTow_roq, child) {
                        //print("Consumer Text2 from Provider One");
                        return Text("Welcome : ${provTow_roq.showSomething2}");
                      },
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderThree_Roq>(
                        builder: (context, provTwo_roq, child) {
                          //print("Consumer Button1 from Provider One");
                          return MaterialButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Do Something1"),
                              onPressed: () {
                                provTwo_roq.doSomething1_Funroq();
                                print( "Name is after change :${provTwo_roq.showSomething1}");
                              });
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Consumer<ProviderThree_Roq>(
                        builder: (context, provTow_roq, child) {
                          //print("Consumer Button2 from Provider One");
                          return MaterialButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Do Something2"),
                              onPressed: () {
                                provTow_roq.doSomething2_Funroq();
                                print("Name is after change :${provTow_roq.showSomething2}");
                              });
                        }),

                  ],
                ))
        ));

  }
}

class ProviderOne_Roq with ChangeNotifier {
  var showSomething1 = "Show Something1_1";
  var showSomething2 = "Show Something1_2";

  doSomething1_Funroq() {
    showSomething1 = "Yes Provider1 Fun One";
    notifyListeners();
  }
  doSomething2_Funroq() {
    showSomething2 = "Yes Provider1 Fun two";
    notifyListeners();
  }
}

class ProviderTwo_Roq with ChangeNotifier {
  var showSomething1 = "Show Something2_1";
  var showSomething2 = "Show Something2_2";

  doSomething1_Funroq() {
    showSomething1 = "Yes Provider2 Fun One";
    notifyListeners();
  }
  doSomething2_Funroq() {
    showSomething2 = "Yes Provider2 Fun two";
    notifyListeners();
  }
}

class ProviderThree_Roq  {
  var showSomething1 = "Show Something3_1";
  var showSomething2 = "Show Something3_2";

  doSomething1_Funroq() {
    showSomething1 = "Yes Provider3 Fun One";
   //notifyListeners();
  }
  doSomething2_Funroq() {
    showSomething2 = "Yes Provider3 Fun two";
    //notifyListeners();
  }
}
import 'package:flutter/material.dart';

import '../../../myApp_Data_Settings_roq/Utils_roq.dart';



class PageSelector_Roq extends StatelessWidget {
  const PageSelector_Roq({Key? key}) : super(key: key);

  static const kIcons = <Icon>[
    Icon(Icons.event),
    Icon(Icons.home),
    Icon(Icons.android),
    Icon(Icons.alarm),
    Icon(Icons.face),
    Icon(Icons.language),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        centerTitle: true,
        title: Text(
        'PageView ',
        style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: Utils.ubuntuRegularFont),
    ),),
      body:Center(
        child: Container(
          height: 300,
          width: double.infinity,
          child: DefaultTabController(
          length: kIcons.length,
          // Use a Builder here, otherwise `DefaultTabController.of(context)` below
          // returns null.
          child: Builder(
            builder: (BuildContext context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const TabPageSelector(),
                  Expanded(
                    child: IconTheme(
                      data: IconThemeData(
                        size: 128.0,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: const TabBarView(children: kIcons),
                    ),
                  ),

                   ElevatedButton(
                      onPressed: () {
                        final TabController controller =
                        DefaultTabController.of(context)!;
                        if (!controller.indexIsChanging) {
                          controller.animateTo(kIcons.length - 1);
                        }
                      },
                      child: const Text('SKIP'),
                    ),

                ],
              ),
            ),
          ),
    ),
        ),
      )
    );
  }
}

import 'package:badges/badges.dart' as badge;
import 'package:badges/badges.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


import '../myApp_Data_Settings_roq/my_app_settings.dart';
import '../myApp_Data_Settings_roq/thems_roq.dart';
//import '../myApp_ExercisesRouts_roq/flutter_ExercisesQuestion_roq.dart';
//import '../myApp_Home_roq/flutter_quiz_roq/flutterQuiz_Main_Screen_Roq.dart';
import 'my_app_routes.dart'

   // show MyRouteGroup, kAboutRoute, kMyAppRoutesAdvance, kMyAppRoutesBasic, kMyAppRoutesDemos, kMyAppRoutesUI;
    show MyRouteGroup, kAboutRoute,kMy_LabAppRoutsUI, kMy_LectAppRoutsUI, kMyAppRoutesProject;


import './my_route.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
  static _MyHomePageState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyHomePageState>();
}

class _MyHomePageState extends State<MyHomePage> {
   var demotitle=[];
  static const List<BottomNavigationBarItem> _kBottmonNavBarItems =
  <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      // backgroundColor: Colors.blue,
      icon: Icon(Icons.all_inbox),
      label: 'Lects',
    ),
    BottomNavigationBarItem(
      //backgroundColor: Colors.blueAccent,
      icon: Icon(Icons.power),
      //label: 'Advanced',
      label: 'Labs',
    ),
    BottomNavigationBarItem(
      //backgroundColor: Colors.blueAccent,
      icon: Icon(Icons.developer_mode),
      //label: 'Advanced',
      label: 'Demos',
    ),
    BottomNavigationBarItem(
      //backgroundColor: Colors.blueAccent,
      icon: Icon(Icons.integration_instructions),
      //label: 'Advanced',
      label: 'Exercises',
    ),
    BottomNavigationBarItem(
      //backgroundColor: Colors.blueAccent,
      icon: Icon(Icons.quiz),
      //label: 'Advanced',
      label: 'Quiz',
    ),
    ////////////////////////////// My Code
    /*BottomNavigationBarItem(
      //backgroundColor: Colors.indigo,
      icon: Icon(Icons.tv),
      label: 'Samples',
    ),*/
    ///////////////////////////////////
    BottomNavigationBarItem(
      //backgroundColor: Colors.indigo,
      icon: Icon(Icons.star),
      label: 'Bookmarks',
    ),
  ];

  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    //show MyRouteGroup, kAboutRoute,kMyAppRoutesUI, kMyAppRoutesDemos, kMyAppRoutesProject;
    final List<Widget> UILab_Flutter_roq = <Widget>[
      for (final MyRouteGroup group in kMy_LabAppRoutsUI)
        _myRouteGroupToExpansionTile(group),
    ];
    final List<Widget> UILect_Flutter_roq = <Widget>[
      for (final MyRouteGroup group in kMy_LectAppRoutsUI)
        _myRouteGroupToExpansionTile(group),
    ];
    final List<Widget> ProjectssFlutter_roq = <Widget>[
      for (final MyRouteGroup group in kMyAppRoutesProject)
        _myRouteGroupToExpansionTile(group),
    ];
   /* final List<Widget> QuizeDart_roq = <Widget>[
      for (final MyRouteGroup group in kMyAppRoutesQuiz)
        _myRouteGroupToExpansionTile(group),
    ];*/

    final bookmarkAndAboutDemos = <Widget>[
      for (final MyRoute route
      in Provider.of<MyAppSettings>(context).starredRoutes)
        _myRouteToListTile(route, leading: const Icon(Icons.bookmark)),
      _myRouteToListTile(kAboutRoute, leading: const Icon(Icons.info)),
    ];
    //double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IndexedStack(
        index: _currentTabIndex,
        children: <Widget>[
          ListView(children: UILect_Flutter_roq),
          ListView(children: UILab_Flutter_roq),
          ListView(children: ProjectssFlutter_roq),
          const Center(child: Text('Exercises will appear here when added.')),
          const Center(child: Text('Quizzes will appear here when added.')),
          ListView(children: bookmarkAndAboutDemos),

        ],
      ),
      bottomNavigationBar:
    Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
    /*borderRadius: BorderRadius.only(
    topRight: Radius.circular(40),
    ),*/
   /* border: Border.all(
    width: 0.5,
    //color: Colors.green,
    style: BorderStyle.solid,
    )*/
    ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            items: _kBottmonNavBarItems,
            selectedIconTheme: IconThemeData(color: pPrimaryColor),
            selectedItemColor:  pPrimaryColor,
            showUnselectedLabels:true,
            currentIndex: _currentTabIndex,
            type: BottomNavigationBarType.shifting,
            onTap: (int index) {
              setState(() => this._currentTabIndex = index);
            },
          ),
        ),
      ),

    );
  }

  Widget _myRouteToListTile(MyRoute myRoute,
      {Widget? leading, IconData trialing = Icons.keyboard_arrow_right,groupName}) {
    final MyAppSettings mySettings = context.watch<MyAppSettings>();
    final TextStyle routeTitleTextStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(fontWeight: FontWeight.bold);
    final Widget leadingWidget =
        leading ?? mySettings.starStatusOfRoute(myRoute.routeName);
    final bool isNew = mySettings.isNewRoute(myRoute.routeName);
    return
      Card(
      //elevation: 10,
      child: ListTile(
        leading: isNew
            ? badge.Badge(
          position: BadgePosition.topEnd(top: 2, end: 2),
          child: leadingWidget,
        )
            : leadingWidget,
        title: Text(myRoute.title, style: routeTitleTextStyle),
        trailing: Icon(trialing),
        subtitle: myRoute.description.isEmpty ? null :
        Text(myRoute.description),
        onTap: () {
          if (isNew) {
            mySettings.markRouteKnown(myRoute.routeName);
          }
          //if(myRoute.indexdemo_roq==1000)  //groupName
          Navigator.of(context).pushNamed(myRoute.routeName);
          /*else {
demotitle.add(myRoute.title);
            Navigator.of(context).pushNamed(myRoute.routeName, arguments: {
              'indexdemo_last': myRoute.indexdemo_roq,});
          }
*/
        },
      ),
    );
  }

  Widget _myRouteGroupToExpansionTile(MyRouteGroup myRouteGroup) {
    final int nNew = context.watch<MyAppSettings>().numNewRoutes(myRouteGroup);
    return  Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    //color: Colors.red,
    elevation: 5,
    child:InkWell(
      splashColor: Colors.cyan[100],
      highlightColor: Colors.transparent,
      child:
    ExpansionTile(
        leading: nNew > 0
            ? badge.Badge(badgeContent: Text('$nNew'), child:Icon(Icons.library_books),/*myRouteGroup.icon*/)
            : Icon(Icons.library_books),//myRouteGroup.icon,
        title: Text(
          myRouteGroup.groupName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        children:

        myRouteGroup.routes.map(_myRouteToListTile).toList(),
      ),
    )
    );
  }


}


/////////////////

/* import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  late int tappedIndex;

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                    color: tappedIndex == index ? Colors.blue : Colors.grey,
                    child: ListTile(
                        title: Center(
                      child: Text('${index + 1}'),
                    ),onTap:(){
                          setState((){
                            tappedIndex=index;
                          });
                        }));
              })
        ]));
  }
}
*/
import 'package:flutter/material.dart';

void main() => runApp(Scaff_AppBarTab_Roq());

class Scaff_AppBarTab_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar & Tap Roq',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: TabsTextIcon_Roq(),
    );
  }
}

class TabsTextIcon_Roq extends StatefulWidget {
  TabsTextIcon_Roq();

  @override
  TabsTextIcon_RoqState createState() => new TabsTextIcon_RoqState();
}

class TabsTextIcon_RoqState extends State<TabsTextIcon_Roq>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller) {
          return <Widget>[
            SliverAppBar(
              title: Text('Store Roq App'),
              pinned: true,
              floating: true,
              backgroundColor: Colors.pink,
              leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ), // overflow menu
                PopupMenuButton<String>(
                  onSelected: (String value) {},
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: "Settings",
                      child: Text("Settings"),
                    ),
                    PopupMenuItem(
                      value: "help",
                      child: Text("Help"),
                    ),
                    PopupMenuItem(
                      value: "about",
                      child: Text("About"),
                    ),
                  ],
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white),
                unselectedLabelColor: Colors.grey[300],
                tabs: [
                  Tab(text: "MUSIC", icon: Icon(Icons.music_note)),
                  Tab(text: "MOVIE", icon: Icon(Icons.ondemand_video)),
                  Tab(text: "BOOKS", icon: Icon(Icons.book)),
                  Tab(text: "Games", icon: Icon(Icons.games)),
                  Tab(
                      text: "Sport",
                      icon: Icon(Icons.sports_baseball_outlined)),
                  Tab(text: "Info", icon: Icon(Icons.info)),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            Align(child: Text("MUSIC : 1", style: MyText.display1(context))),
            Align(child: Text("MOVIE : 2", style: MyText.display1(context))),
            Align(child: Text("BOOKS : 3", style: MyText.display1(context))),
            Align(child: Text("Games : 4", style: MyText.display1(context))),
            Align(child: Text("Sport : 5", style: MyText.display1(context))),
            Align(child: Text("Info : 6", style: MyText.display1(context))),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

class MyText {
  static TextStyle? display1(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium;
  }
}

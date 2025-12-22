

/////////////////////////////// up and bottom tabBar ///////////////////////
import 'package:flutter/material.dart';

class TabBarWidget_Ex_Roq extends StatefulWidget {
  const TabBarWidget_Ex_Roq({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget_Ex_Roq>
    with TickerProviderStateMixin {
  late TabController controller1;
   TabController? controller2;
  TabController? controller3;

  @override
  void initState() {
    super.initState();
    controller1 = TabController(vsync: this, length: 3);
    controller2 = TabController(vsync: this, length: 3);
    controller3 = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2!.dispose();
    controller3?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        bottom: PreferredSize(
          preferredSize: Size(0, 50),
          child: Container(
            height: 50,
            color: Colors.pink,
            child: TabBar(
              controller: controller1,
              tabs: <Tab>[
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.location_city)),
                Tab(icon: Icon(Icons.hotel)),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[600],
        child: TabBar(
          controller: controller2,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.restaurant)),
            Tab(icon: Icon(Icons.local_pizza)),
            Tab(icon: Icon(Icons.local_bar)),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          TabBarView(
            controller: controller1,
            children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.home,
                      size: 100, color: Colors.pink[300])),
              Align(
                  alignment: Alignment.topCenter,
                  child: Icon(Icons.location_city,
                      size: 100, color: Colors.pink[300])),
              Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.local_hotel,
                      size: 100, color: Colors.pink[300])),
            ],
          ),
          TabBarView(
            controller: controller2,
            children: <Widget>[
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Icon(Icons.restaurant,
                      size: 100, color: Colors.green[300])),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.local_pizza,
                      size: 100, color: Colors.green[300])),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.local_bar,
                      size: 100, color: Colors.green[300])),
            ],
          ),
          TabBarView(
            controller: controller3,
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.cloud_queue,
                    size: 200,
                    color: Colors.blueGrey.withOpacity(0.9),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.brightness_7,
                    size: 200,
                    color: Colors.amber.withOpacity(0.9),
                  )),
              Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.brightness_3,
                    size: 200,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
///////////////////////////////////// Routing Example /////////////////////


// Adapted from Tensor Programming's multi-page app tutorial:
// https://github.com/tensor-programming/dart_flutter_multi_page_app.
class RoutesExample_Roq extends StatelessWidget {
  const RoutesExample_Roq({Key? key}) : super(key: key);

  /// Route name is useful for navigating between routes.
  /// ! Note: in the Flutter Catalog each example's names are class names
  /// (cf. [routeName] in my_route.dart). That's why we know this page's route
  /// name is "/RoutesExample".
  /// But be careful not to use [--obfuscate] flag when building the apk,
  /// otherwise [runtimeType.toString()] changes
  /// (cf. https://flutter.dev/docs/deployment/obfuscate#caveat).
  static const kRouteName = '/RoutesExample_Roq';

  @override
  Widget build(BuildContext context) {
    debugPrint('RouteName=${ModalRoute.of(context)?.settings.name}');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator maintains a stack-like structure of pages. Jumping
            // between routes is by push/pop of Navigator.
            Navigator.push(context, _PageTwo());
          },
          child: const Text('Go to page two'),
        ),
      ),
    );
  }
}

// <void> means this route returns nothing.
class _PageTwo extends MaterialPageRoute<void> {
  _PageTwo()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        elevation: 1.0,
      ),
      // *Note*: use a Builder instead of directly giving the body, so
      // that Scaffold.of(context) won't throw exception, c.f.
      // https://stackoverflow.com/a/51304732.
      body: Builder(
        builder: (BuildContext context) => Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigator.push<T> returns a Future<T>, which is the
              // return value of the pushed route when it's popped.
              Navigator.push<String>(context, _PageThree())
                  .then((returnVal) {
                if (returnVal != null) {
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You clicked: $returnVal'),
                      action: SnackBarAction(
                        label: 'OK',
                        onPressed: () {},
                      ),
                    ),
                  );
                }
              });
            },
            child: const Text('Go to page 3'),
          ),
        ),
      ),
    );
  });
}

// MaterialPageRoute<String> returns a Future<String>.
class _PageThree extends MaterialPageRoute<String> {
  _PageThree()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last page'),
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const CircleAvatar(child: Text('1')),
              title: const Text('user1@example.com'),
              onTap: () => Navigator.pop(context, 'user1@example.com'),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text('2')),
              title: const Text('user2@example.com'),
              onTap: () => Navigator.pop(context, 'user2@example.com'),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text('3')),
              title: const Text('user3@example.com'),
              onTap: () => Navigator.pop(context, 'user3@example.com'),
            ),
            const Divider(),
            MaterialButton(
              onPressed: () {
                // Pops until reaching a route with that route name.
                Navigator.popUntil(
                  context,
                  ModalRoute.withName(RoutesExample_Roq.kRouteName),
                );
              },
              child: const Text('Go home'),
            ),
          ],
        ),
      ),
    );
  });
}

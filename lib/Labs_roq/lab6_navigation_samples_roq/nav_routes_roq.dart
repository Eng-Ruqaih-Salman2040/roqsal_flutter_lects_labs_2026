import 'package:flutter/material.dart';
class RoutesExample_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes Roq App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Routes_Roq(),
      routes: {
        Routes_Roq.kRouteName: (context) => Routes_Roq(),
        PageTwo_Roq.RouteName2: (context) => PageTwo_Roq(),
        PageThree_Roq.RouteName3: (context) => PageThree_Roq(),
      }
    );
  }
}
class Routes_Roq extends StatelessWidget {
  const Routes_Roq({Key? key}) : super(key: key);

  /// Route name is useful for navigating between routes.

  static const kRouteName = '/Routes_Roq';

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
            Navigator.pushNamed(context, PageTwo_Roq.RouteName2);
          },
          child: const Text('Go to page two'),
        ),
      ),
    );
  }
}

class PageTwo_Roq extends StatelessWidget {
  const PageTwo_Roq({Key? key}) : super(key: key);
  static const RouteName2 = '/PageTwo_Roq';
  @override
  Widget build(BuildContext context) {
    debugPrint('RouteName=${ModalRoute.of(context)?.settings.name}');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
          elevation: 1.0,
        ),
        // *Note*: use a Builder instead of directly giving the body, so
        // that Scaffold.of(context) won't throw exception, c.f.
        // https://stackoverflow.com/a/51304732.
        body:  Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push<T> returns a Future<T>, which is the
                // return value of the pushed route when it's popped.
                Navigator.pushNamed(context,  PageThree_Roq.RouteName3)
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
            )
        )
    );

  }
}




class PageThree_Roq extends StatelessWidget {
  const PageThree_Roq({Key? key}) : super(key: key);
  static const RouteName3 = '/PageThree_Roq';
  @override
  Widget build(BuildContext context) {
    debugPrint('RouteName=${ModalRoute.of(context)?.settings.name}');
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
                ////// Way 1
                //Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName),);
                ////// Way 2
               Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('Go home'),
            ),
          ],
        ),
      ),
    );
  }
}

// MaterialPageRoute<String> returns a Future<String>.

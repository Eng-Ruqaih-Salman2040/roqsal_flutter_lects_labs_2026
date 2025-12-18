import 'package:flutter/material.dart';
void main() => runApp(FuturBuilder_Roq_Ex());
class FuturBuilder_Roq_Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FuturBuilder Roq App',
      // to hide debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage_FuturBuilder_Roq_Ex(),
    );
  }
}

class HomePage_FuturBuilder_Roq_Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('FuturBuilder Roq App'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => FutureDemoPage(),
              ),
            ),
            child: Text('Demonstrate FutureBuilder By D.Ruqaih Salman'),
          ),
        ),
      ),
    );
  }
}

class FutureDemoPage extends StatelessWidget {
  /// Function that will return a
  /// "string" after some time
  /// To demonstrate network call
  /// delay of [2 seconds] is used
  ///
  /// This function will behave as an
  /// asynchronous function
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 5), () {
      return "I am the data that appeared after five seconds";
      // throw Exception("Custom Error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future RoqNew Page'),
        ),
        body: FutureBuilder(
          builder: (ctx, snapshot) {
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18),
                  ),
                );

                // if we got our data
              } else if (snapshot.hasData) {
                // Extracting data from snapshot object
                final String data = snapshot.data as String;
                return Center(
                  child: Text(
                    '$data',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              }
            }

            // Displaying LoadingSpinner to indicate waiting state
            return Center(
              child: CircularProgressIndicator(),
            );
          },

          // Future that needs to be resolved
          // inorder to display something on the Canvas
          future: getData(),
        ),
      ),
    );
  }
}

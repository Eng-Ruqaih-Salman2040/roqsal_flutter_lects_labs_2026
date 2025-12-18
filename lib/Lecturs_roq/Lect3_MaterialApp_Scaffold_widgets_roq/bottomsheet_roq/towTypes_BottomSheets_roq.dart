import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Show Modal Bottom Sheet
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Modal Bottom Sheet',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context); // Dismiss the modal
                            },
                            child: Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Show Modal Bottom Sheet'),
            ),
            SizedBox(height: 20),
            // Use Builder to get the correct context
            Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  onPressed: () {
                    // Show Persistent Bottom Sheet
                    Scaffold.of(context).showBottomSheet(
                          (BuildContext context) {
                        return Container(
                          height: 200,
                          padding: EdgeInsets.all(16.0),
                          color: Colors.blueGrey[100],
                          child: Column(
                            children: [
                              Text(
                                'Persistent Bottom Sheet',
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context); // Dismiss the persistent bottom sheet
                                },
                                child: Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: Text('Show Persistent Bottom Sheet'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
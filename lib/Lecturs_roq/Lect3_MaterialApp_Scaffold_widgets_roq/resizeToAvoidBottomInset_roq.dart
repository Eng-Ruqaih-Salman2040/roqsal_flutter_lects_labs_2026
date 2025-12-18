import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resize to Avoid Bottom Insets',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resize to Avoid Bottom Insets Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: List.generate(20, (index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              }),
            ),
          ),
          // Button to navigate to the example
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResizeExample()),
              );
            },
            child: Text('Go to Resize Example'),
          ),
        ],
      ),
    );
  }
}

class ResizeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resize Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: List.generate(20, (index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              }),
            ),
          ),
          // TextField that will resize to avoid the keyboard
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Resize to avoid keyboard',
              ),
            ),
          ),
          // TextField that does not resize to avoid the keyboard
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'No resize for keyboard',
              ),
            ),
          ),
          // A button to show another example with resizeToAvoidBottomInset = false
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NoResizeExample()),
              );
            },
            child: Text('Show No Resize Example'),
          ),
        ],
      ),
    );
  }
}

class NoResizeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Resize Example'),
      ),
      resizeToAvoidBottomInset: false, // Disable resizing
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: List.generate(20, (index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              }),
            ),
          ),
          // TextField at the bottom
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'This will be obscured by the keyboard',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
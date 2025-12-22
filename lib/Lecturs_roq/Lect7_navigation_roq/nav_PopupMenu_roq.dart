import 'package:flutter/material.dart';

void main() {
  runApp(const Navigation_PopupMB_Roq());
}

class Navigation_PopupMB_Roq extends StatelessWidget {
  const Navigation_PopupMB_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Roq App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage_Roq(),
      routes: {
        '/hello': (context) => const HelloScreen_Roq(),
        '/contact': (context) => const ContactScreen_Roq(),
        '/about': (context) => const AboutScreen_Roq()
      },
    );
  }
}

class HelloScreen_Roq extends StatelessWidget {
  const HelloScreen_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello "),
      ),
      body: const Center(
        child: Text("Hello Page"),
      ),
    );
  }
}

class ContactScreen_Roq extends StatelessWidget {
  const ContactScreen_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
      ),
      body: const Center(
        child: Text("Contact Page"),
      ),
    );
  }
}

class AboutScreen_Roq extends StatelessWidget {
  const AboutScreen_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: const Center(
        child: Text("About Page"),
      ),
    );
  }
}

class HomePage_Roq extends StatefulWidget {
  const HomePage_Roq({Key? key}) : super(key: key);

  @override
  _HomePage_RoqState createState() =>
      _HomePage_RoqState();
}

class _HomePage_RoqState extends State {
  var selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routing Roq App"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                // your logic
                setState(() {
                  selectedItem = value.toString();
                });
                print(value);
                Navigator.pushNamed(context, value.toString());
              }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Hello Page"),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About Page"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact Page"),
                value: '/contact',
              )
            ];
          })
        ],
      ),
      body: Center(
        child: Text(selectedItem),
      ),
    );
  }
}

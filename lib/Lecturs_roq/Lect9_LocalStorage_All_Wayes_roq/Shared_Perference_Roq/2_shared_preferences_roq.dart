import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Shared_Preferences_Roq_Ex());
}

class Shared_Preferences_Roq_Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Ruqaih_Salman.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String savedName = '';
  TextEditingController _nameController = TextEditingController();

  // Retrieve the saved name if it exists
  void initState() {
    super.initState();
    _retrieveName();
  }

  Future<void> _retrieveName() async {
    final prefs = await SharedPreferences.getInstance();

    // Check where the name is saved before or not
    if (!prefs.containsKey('name')) {
      return;
    }

    setState(() {
      savedName = prefs.getString('name')!;
    });
  }

  Future<void> _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _nameController.text);
  }

  Future<void> _clearName() async {
    final prefs = await SharedPreferences.getInstance();
    // Check where the name is saved before or not
    if (!prefs.containsKey('name')) {
      return;
    }

    await prefs.remove('name');
    setState(() {
      savedName = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shared Preferences Roq App'),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(25),
              child: savedName == '' ? Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Your Name'),
                  ),
                  ElevatedButton(
                      onPressed: _saveName, child: Text('Save'))
                ],
              )
                  :
              Column(children: [
                Text(
                  'Hello $savedName',
                  style: TextStyle(fontSize: 50),
                ),
                ElevatedButton(
                    onPressed: _clearName,
                    child: Text('Reset'))
              ])),
        ));
  }
}
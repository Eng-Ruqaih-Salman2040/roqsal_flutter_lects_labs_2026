import 'package:flutter/material.dart';

void main() {
  runApp(Radio_ListTile_Roq());
}

class Radio_ListTile_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Radio Ruq App',
      home: HomePage(),
    );
  }

 const Radio_ListTile_Roq();
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The inital group value
  String _selectedGender = 'male';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Radio Roq App',
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Please let us know your gender:'),
              ListTile(
                leading: Radio(
                  value: 'male',
                  groupValue: _selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                title: Text('Male'),
              ),
              ListTile(
                leading: Radio(
                  value: 'female',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value.toString();
                    });
                  },
                ),
                title: Text('Female'),
              ),
              SizedBox(height: 25),
              Text(_selectedGender == 'male' ? 'Hello gentlement!' : 'Hi lady!')
            ],
          )),    );
  }
}

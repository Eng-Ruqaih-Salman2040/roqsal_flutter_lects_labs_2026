import 'package:flutter/material.dart';

void main() {
  runApp(RadioListTile_Roq());
}

class RadioListTile_Roq extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Radio Ruqaih Salman ',
      home: RadioListTile_Home_Roq(),
    );
  }

  const RadioListTile_Roq();
}

class RadioListTile_Home_Roq extends StatefulWidget {
  @override
  _RadioListTile_Home_RoqState createState() => _RadioListTile_Home_RoqState();
}

class _RadioListTile_Home_RoqState extends State<RadioListTile_Home_Roq> {
  // The group value
  var _result;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'RadioListTile Roq App',
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1 + 2 + 4 = ?'),
              RadioListTile(
                  title: Text('4'),
                  value: 4,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              RadioListTile(
                  title: Text('5.4'),
                  value: 5.4,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              RadioListTile(
                  title: Text('6'),
                  value: 6,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              RadioListTile(
                  title: Text('7'),
                  value: 7,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              SizedBox(height: 25),
              Text(_result == 7 ? 'Correct!' : 'Please chose the right answer!')
            ],
          )),);
  }
}

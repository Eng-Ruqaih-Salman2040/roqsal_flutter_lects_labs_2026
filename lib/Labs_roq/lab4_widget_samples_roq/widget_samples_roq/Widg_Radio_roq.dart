import 'package:flutter/material.dart';

void main() => runApp(Radio_Widget_Ex1());

/// This Widget is the main application widget.
class Radio_Widget_Ex1 extends StatelessWidget {
  static const String _title = 'Radio Button Roq';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum BestProgrammingLang { Java, Csharp, Dart }

class MyStatefulWidget extends StatefulWidget {
  //-->MyStatefulWidget({Key?key}) : super(key: key);
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  BestProgrammingLang _lang_roq_ = BestProgrammingLang.Java;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Java Language'),
          leading: Radio(
            value: BestProgrammingLang.Java,
            groupValue: _lang_roq_,
            onChanged: (BestProgrammingLang? value) {
              setState(() {
                _lang_roq_ = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('C# Language'),
          leading: Radio(
            value: BestProgrammingLang.Csharp,
            groupValue: _lang_roq_,
            onChanged: ( BestProgrammingLang? value) {
              setState(() {
                _lang_roq_ = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Dart Language'),
          leading: Radio(
            value: BestProgrammingLang.Dart,
            groupValue: _lang_roq_,
            onChanged: (BestProgrammingLang? value) {
              setState(() {
                _lang_roq_ = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RadioListTile Example'),
        ),
        body: FormExample(),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _selectedGender;
  String? _genderError;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            // Text Field
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              onSaved: (value) {
                _name = value;
              },
            ),
            SizedBox(height: 20),

            // RadioListTile for Gender Selection
            Text('Gender:'),
            RadioListTile<String>(
              title: Text('Male'),
              value: 'Male',
              groupValue: _selectedGender,
              onChanged: (String? value) {
                setState(() {
                  _selectedGender = value;
                  _genderError = null; // Clear error if selected
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Female'),
              value: 'Female',
              groupValue: _selectedGender,
              onChanged: (String? value) {
                setState(() {
                  _selectedGender = value;
                  _genderError = null; // Clear error if selected
                });
              },
            ),
            // Display error message if no gender is selected
            if (_genderError != null)
              Text(
                _genderError!,
                style: TextStyle(color: Colors.red),
              ),
            SizedBox(height: 20),

            // Submit Button
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (_selectedGender == null) {
                    setState(() {
                      _genderError = 'Please select your gender';
                    });
                    return;
                  }

                  _formKey.currentState!.save();
                  // Process the data
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Form Submitted'),
                        content: Text('Name: $_name\n'
                            'Gender: $_selectedGender'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
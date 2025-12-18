import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(SignUpForm_Roq());
}

class SignUpForm_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Sign Up ',
      home: SignUpForm_HomePage_Roq(),
    );
  }
}

class SignUpForm_HomePage_Roq extends StatefulWidget {
  @override
  _SignUpForm_HomePage_RoqState createState() =>
      _SignUpForm_HomePage_RoqState();
}

class _SignUpForm_HomePage_RoqState extends State<SignUpForm_HomePage_Roq> {
  // Define a key to access the form
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';

  // This function is triggered when the user press the "Sign Up" button
  void _trySubmitForm() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      print('Everything looks good!');
      print("UserEmail : $_userEmail");
      print("UserName : $_userName");
      print("Password : $_password");
      print("ConfirmPassword: $_confirmPassword");
      print("Birthday : $selectedDate");
      print("Gender : $_selectedGender");
      print("Favriote Languages : $_selectedItems");
      print("Country : $selectedItem");
      Fluttertoast.showToast(
          msg: "Registration completed successfully",
          toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.BOTTOM );

          /*
      Continute proccessing the provided information with your own logic
      such us sending HTTP requests, savaing to SQLite database, etc.
      */
    }
  }

  String _selectedGender = 'male';
  DateTime selectedDate = DateTime.now();

  /////////////////////////////////// Check Box roq Fun ///////////////////////
  List<String> _selectedItems = [];

  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items = [
      'Dart',
      'Flutter',
      'Node.js',
      'React Native',
      'Java',
      'Docker',
      'MySQL'
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: _items);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        alignment: Alignment.center,
        child: Center(
          child: SafeArea(
            //minimum: const EdgeInsets.all(12.0),
            top: true,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          /////////////////////////////////////////
                          /// Eamil
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Email'),
                            validator: (value) {
                              // if(value != null){   ////// Or
                              if (value!.trim().isEmpty) {
                                return 'Please enter your email address';
                              }
                              // Check if the entered email has the right format
                              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              // Return null if the entered email is valid
                              return null;
                            },
                            onChanged: (value) => _userEmail = value,
                          ),

                          /////////////////////////////////////////
                          /// username
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Username'),
                            validator: (String? value) {
                              if (value!.trim().isEmpty) {
                                return 'This field is required';
                              }
                              if (value.trim().length < 4) {
                                return 'Username must be at least 4characters in length';
                              }
                              // Return null if the entered username is valid
                              return null;
                            },
                            onChanged: (value) => _userName = value,
                          ),

                          ////////////////////////////////////
                          /// Password
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Password'),
                            obscureText: true,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return 'This field is required';
                              }
                              if (value!.trim().length < 8) {
                                return 'Password must be at least 8 characters in length';
                              }
                              // Return null if the entered password is valid
                              return null;
                            },
                            onChanged: (value) => _password = value,
                          ),
                          //////////////////////////////////
                          /// Confirm Password
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Confirm Password'),
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This field is required';
                              }

                              if (value != _password) {
                                return 'Confimation password does not match the entered password';
                              }

                              return null;
                            },
                            onChanged: (value) => _confirmPassword = value,
                          ),
                          //////////////////////////////// Gender
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 3, color: Colors.grey.shade300),
                              ),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    'Gender',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade600),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: RadioListTile(
                                              title: Text('Male'),
                                              value: 'male',
                                              groupValue: _selectedGender,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedGender =
                                                      value.toString();
                                                });
                                              }),
                                        ),
                                        Expanded(
                                          child: RadioListTile(
                                              title: Text('Female'),
                                              value: "female",
                                              groupValue: _selectedGender,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedGender =
                                                      value.toString();
                                                });
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          //////////////////////////////////// Birthday
                          SizedBox(height: 20),
                          makeInputDate(label: "Birthdate"),

                          /*Text("'Gender :"),
                          Text(_selectedGender == 'male' ? 'Male' : 'Female'),*/

                          /////////////////////////////////////Country User

                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 2,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Country',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey.shade800),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Expanded(child: DropDownClass()),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /////////////////////////// Choose  Favarote items---->Programming Lang
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'Programming Lang',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade800),
                              ),
                              SizedBox(height: 20),
                              // use this button to open the multi-select dialog
                              GestureDetector(
                                child: Container(
                                  width: 310,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )),
                                  child: const Text(
                                      "Select Your Favorite Languges"),
                                ),

                                //('/*Select Your Favorite Languge*/'),
                                onTap: _showMultiSelect,
                              ),
                              const Divider(
                                height: 10,
                              ),
                              // display selected items
                              /* Wrap(
                                children: _selectedItems
                                    .map((e) => Chip(
                                  label: Text(e),
                                ))
                                    .toList(),
                              )*/
                            ],
                          ),

                          /////////////////////////////////// Signup button /////////////////////

                          Container(
                              alignment: Alignment.centerRight,
                              child: OutlinedButton(
                                  onPressed: _trySubmitForm,
                                  child: Text('Sign Up')))
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeInputDate({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.grey.shade800),
        ),
        SizedBox(
          height: 15,
        ),
        GestureDetector(
            onTap: () {
              _selectDate(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400)),
              child: Text(DateFormat('dd/MM/yyyy').format(selectedDate)),
            )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}

////////////////////////////////////// Country build UI widget
String? selectedItem = 'Yemen';

class DropDownClass extends StatefulWidget {
  const DropDownClass({Key? key}) : super(key: key);

  @override
  State<DropDownClass> createState() => _DropDownClassState();
}

class _DropDownClassState extends State<DropDownClass> {
  List<String> items = ['Yemen', 'Qater', 'Maser', 'Oman', 'Torkia'];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 310,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.keyboard_arrow_down, size: 20),
              ),
              value: selectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(item, style: TextStyle(fontSize: 12)),
                      )))
                  .toList(),
              onChanged: (item) {
                setState(() => selectedItem = item);

                Text("Country : $selectedItem");
              }),
        ));
  }
}

////////////////////////////////////////// CkeckBox Widget

// This widget is reusable
// Implement a multi select on the Sign up screen
class MultiSelect extends StatefulWidget {
  final List<String> items;

  const MultiSelect({Key? key, required this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  // this variable holds the selected items
  final List<String> _selectedItems = [];

// This function is triggered when a checkbox is checked or unchecked
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Topics'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) => _itemChange(item, isChecked!),
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: _cancel,
        ),
        ElevatedButton(
          child: const Text('Submit'),
          onPressed: _submit,
        ),
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'colors.dart';

import 'mydrawal.dart';
import 'db_manager.dart';

class HomePage_Crud_image_Roq extends StatefulWidget {
  const HomePage_Crud_image_Roq({Key? key}) : super(key: key);

  @override
  _HomePage_Crud_image_RoqState createState() => _HomePage_Crud_image_RoqState();
}

class _HomePage_Crud_image_RoqState extends State<HomePage_Crud_image_Roq> {
  final DatabaseHelper dbHelper = DatabaseHelper.instance;
  List<Map<String, dynamic>> allCategoryData = [];
  TextEditingController _categoryName = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  @override
  void initState() {
    _query();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: MyDrawal(),
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor2,
        centerTitle: true,
        title: Text("create and store category"),
      ),
      body: Form(
        key: formGlobalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.greenAccent, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: MyColors.primaryColor, width: 1.0),
                              ),
                              hintText: 'Add Category',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                            ),
                            controller: _categoryName,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter category name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButtonTheme(
                      data: TextButtonThemeData(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              MyColors.primaryColor),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (formGlobalKey.currentState!.validate()) {
                            _insert();
                          }
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: allCategoryData.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (_, index) {
                          var item = allCategoryData[index];
                          return Container(
                            color: MyColors.orangeTile,
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.zero,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("${item['name']}"),
                                    Spacer(),
                                    IconButton(
                                      onPressed: null,
                                      icon: Icon(Icons.edit),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        _delete(item['_id']);
                                      },
                                      icon: Icon(Icons.delete),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: MyColors.orangeDivider,
                                  thickness: 1,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void _insert() async {
    // row to insert
    Map<String, dynamic> row = {DatabaseHelper.columnName: _categoryName.text};
    print('insert stRT');

    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
    _categoryName.text = "";
    _query();
  }

  void _query() async {
    final List<Map<String, dynamic>> allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach(print);
    allCategoryData = allRows;
    setState(() {});
  }

  void _delete(int id) async {
    // Assuming that the number of rows is the id for the last row.
     int rowsDeleted;
    //--------------------------------------------
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        // behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
        content: Text("Are you sure to delete the item in row $id",
            style: TextStyle(color: Colors.white)),
        action: SnackBarAction(
          label: "Yes",
          textColor: Colors.redAccent,
          onPressed: () {

            setState(() async {
               rowsDeleted = await dbHelper.delete(id);
               _query();
             // litems.insert(id, deleteItem);
            });
          },
        ),
      ),
    );
    //------------------------------------------
   // print('deleted $rowsDeleted row(s): row $id');

  }
}

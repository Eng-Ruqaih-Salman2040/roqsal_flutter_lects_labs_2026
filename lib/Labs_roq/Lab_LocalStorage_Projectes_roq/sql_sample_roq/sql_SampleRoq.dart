import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Sql_Sample_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ChangeNotifierProvider<MyHomePageProvider>(
            create: (context) => MyHomePageProvider(),
            child: Consumer<MyHomePageProvider>(
              builder: (context, provider, child) {
                if (provider.data == null) {
                   print("prov $provider.data");
                  provider.getData(context);
                  //return Center(child: CircularProgressIndicator());
                }
                // when we have the json loaded... let's put the data into a data table widget
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  // Data table widget in not scrollable so we have to wrap it in a scroll view when we have a large data set..
                  child: SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        // DataColumn(
                        // label: Text('Verified'),
                        // tooltip: 'represents if user is verified.'),
                        DataColumn(
                            label: Text('Pin ID'),
                            tooltip: 'represents first pin id of the user'),
                        DataColumn(
                            label: Text('Pin Name'),
                            tooltip: 'represents pin name of the user'),
                        DataColumn(
                            label: Text('Used/Unused'),
                            tooltip: 'represents Used/Unused of the user'),
                        DataColumn(
                            label: Text('Date'),
                            tooltip: 'represents date of the user'),
                      ],
                      rows: provider.data!.results
                          .map((data) =>
                      // we return a DataRow every time
                      DataRow(
                        // List<DataCell> cells is required in every row
                          cells: [
                            // DataCell((data.verified)
                            //     ? Icon(
                            //         Icons.verified_user,
                            //         color: Colors.green,
                            //       )
                            //     : Icon(Icons.cancel, color: Colors.red)),
                            // I want to display a green color icon when user is verified and red when unverified
                            DataCell(Text(data.pin_id)),
                            DataCell(Text(data.pin_name)),
                            DataCell(
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: data.used_pin == "1"
                                      ? Colors.green
                                      : Colors.red,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                    new BorderRadius.circular(30.0),
                                  )),
                                  // shape: Border.all(
                                  //   color: Colors.purple,
                                  //   width: 2.0,
                                  // ),
                                  // splashColor: Colors.cyan,
                                  // highlightColor: Colors.blue,
                                  child: data.used_pin == "1"
                                      ? Text("Useed")
                                      : Text("Unused")),
                            ),

                            DataCell(Text(data.pin_date)),
                          ]))
                          .toList(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
////////////////////// Provider

class MyHomePageProvider extends ChangeNotifier {
  MyData? data;

  Future getData(context) async {

    var url = Uri.parse(
        'https://software.oceonicitsolution.com/hrms/v3/mlm_api/v1/PromoCodeApi.php');
    var response = await http.get(url);
    print("res${response.body}");
    // now we have response as String from local json or and API request...
    var mJson = json.decode(response.body);
    // print("mjson" + mJson);
    this.data = MyData.fromJson(mJson);
    // this.data = http.post(mJson) as MyData;
    this.notifyListeners(); // for callback to view
  }
}

////////////////////////////  Model

class MyData {
  List<Results> results = [];

  MyData.fromJson(Map<String, dynamic> json) {
    // previous = json['previous'];
    // next = json['next'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }
}

class Results {
  String pin_id = "";
  String pin_name = "";
  String used_pin = "";
  String pin_date = "";

  Results.fromJson(Map<String, dynamic> json) {
    pin_id = json['pin_id'];
    pin_name = json['pin_name'];
    used_pin = json['use_unuse'];
    pin_date = json['pin_date'];
  }
}

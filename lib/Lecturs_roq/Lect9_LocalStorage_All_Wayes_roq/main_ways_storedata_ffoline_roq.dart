import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'Internal_Storage_Roq/1_loading_data_from_file_assesst.dart';
import 'Internal_Storage_Roq/2_loading_data_from_internalStorage.dart';
import 'Internal_Storage_Roq/3_loading_data_from_CVSfile_assesst.dart';
import 'Internal_Storage_Roq/4_load_data_fromJSON_assest_roq.dart';
import 'Shared_Perference_Roq/1_shared_preference_roq.dart';
import 'Shared_Perference_Roq/2_shared_preferences_roq.dart';
import 'SqfLite_Roq/1_sqflite_ex_roq/MyUi_roq.dart';
import 'SqfLite_Roq/2_sql_curdEx_imagePicker.roq/homepage.dart';

class Main_StoreData_Offline_Roq extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

 const Main_StoreData_Offline_Roq();
}

class _MyHomePageState extends State<Main_StoreData_Offline_Roq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF666666)),
          title: Text("Store Data Offline",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Color(0xFF666666))),
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (String value) {},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            )
          ],
          systemOverlayStyle: SystemUiOverlayStyle.light),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
/////////////////////////////////////////////////  Networing Examples ////////////////////////

            /* Text(
              "The Ways to Store Data Offline in Flutter",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                // backgroundColor: Colors.greenAccent,
              ),
            ),*/

            //Fetch_JSON_Data_Roq_Ex
            ///////////////////// Ex1 Read From Local file.txt in assest
            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Load_content_from_assestfile_Roq()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog: "Load Data From File.txt in assest")),

            ///////////////////// Ex2 Read From Local  file file.txt in internal storage in phone
            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Read_Write_Internalfile_Roq()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog:
                        "Read & Write Data from/to file in phone Document")),

            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Read_Write_CSVfile_Roq()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog: "Load & show data from CSV files in assest")),

            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Read_Local_JSON_Roq()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog: "Load data from JSON file in assest")),

            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Baisc_Shared_Preferences_Roq()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog:
                        "Seve, Retrive and Delete data of Shared_Preferences")),

            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Shared_Preferences_Roq_Ex()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog: "Login Example with Shared_Preferences")),

            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyUi_Page_Sqflite_Roq()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog: "SQflite All Opreaions (Note App)")),

            TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage_Crud_image_Roq()),
                    ),
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Continer_roq_ex1()),);
                child: buildUI_Roq(
                    typeDialog: "SQflite All Opreaions with Images")),

            /*Delete data on the internet
Fetch data from the internet
Make authenticated requests
Parse JSON in the background
Send data to the internet
Update data over the internet
Work with WebSockets
*/
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//////////////////////////
class buildUI_Roq extends StatelessWidget {
  const buildUI_Roq({Key? key, required this.typeDialog}) : super(key: key);
  final String typeDialog;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF534D4D),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(this.typeDialog,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF403D3D),
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
        ),
      ),
    );
  }
}

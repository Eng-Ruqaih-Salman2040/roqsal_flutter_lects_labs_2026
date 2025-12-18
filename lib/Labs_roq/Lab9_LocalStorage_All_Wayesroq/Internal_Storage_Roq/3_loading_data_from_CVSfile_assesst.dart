import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:csv/csv.dart';

void main() {
  runApp(Read_Write_CSVfile_Roq());
}

class Read_Write_CSVfile_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruqaih.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<dynamic>> _data_roq = [];

  // This function is triggered when the floating button is pressed
  void _loadCSV() async {
    final String _rawData_roq = await rootBundle.loadString("assets_roq/assets_storage_offline/Roq_csv_file.csv");
    List<List<dynamic>> _listData_roq = CsvToListConverter().convert(_rawData_roq);
    setState(() {
      _data_roq = _listData_roq;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File CSV Roq App"),
      ),
      body: ListView.builder(
        itemCount: _data_roq.length,
        itemBuilder: (_, index_roq) {
          return Card(
            margin: const EdgeInsets.all(3),
            color: index_roq == 0 ? Colors.amber : Colors.white,
            child: ListTile(
              leading: Text(_data_roq[index_roq][0].toString()),
              title: Text(_data_roq[index_roq][1]),
              trailing: Text(_data_roq[index_roq][2].toString()),
            ),
          );
        },
      ),
      floatingActionButton:
      FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _loadCSV),
    );
  }
}
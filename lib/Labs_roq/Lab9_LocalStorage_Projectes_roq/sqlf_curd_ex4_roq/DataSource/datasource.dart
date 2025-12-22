import 'package:flutter/material.dart';
/*
import 'package:flutter_laps_samples_roq_2022/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex4_roq/Models/bill.dart';
import 'package:flutter_laps_samples_roq_2022/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex4_roq/db/DatabaseHandler.dart';
*/
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab_LocalStorage_Projectes_roq/sqlf_curd_ex4_roq/Models/bill.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab_LocalStorage_Projectes_roq/sqlf_curd_ex4_roq/db/DatabaseHandler.dart';


class MyData extends DataTableSource {
DatabaseHandler handler;
List<bill> _bill;
MyData(this._bill, this.handler);


  bool get isRowCountApproximate => false;
  int get rowCount => _bill.length;
  int get selectedRowCount => 0;
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_bill[index].Date.toString())),
      DataCell(Text(_bill[index].LastReading.toString())),
      DataCell(Text(_bill[index].kWH.toString())),
      DataCell(Text(_bill[index].prevBill.toString())),
      DataCell(IconButton(
        icon: Icon(Icons.delete),
        onPressed: (){
          var f = _bill[index].id.toString();
         handler.deleteBill(int.parse(_bill[index].id.toString()));
      
      },)),
    ]);
  }

List<DataRow> getRows(List<bill> users) => users.map((bill _bills) {
        final cells = [
          _bills.Date,
          _bills.LastReading,
          _bills.kWH,
          _bills.prevBill
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

}
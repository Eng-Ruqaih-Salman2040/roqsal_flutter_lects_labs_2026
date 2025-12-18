import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DyanmicListDisplay extends StatefulWidget {
  @override
  State createState() => new DyanmicList();
}
class DyanmicList extends State<DyanmicListDisplay> {
  List<String> litems = [];
  bool isUndoPressed = false;
  bool isDeleting = true;
  String findString = "";
  String replaceWith = "";
  int idU = 1000;
  final TextEditingController titel_val = new TextEditingController();

  // Delete an item
  void _deleteItem(int id, itemValue) async {
    var deleteItem = litems.removeAt(id);
    setState(() {
      isDeleting = true;
    });
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
       // behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
        content: Text("${deleteItem} has been deleted",
            style: TextStyle(color: Colors.white)),
        action: SnackBarAction(
          label: "UNDO",
          textColor: Colors.redAccent,
          onPressed: () {
            isUndoPressed = true;
            setState(() {
              isDeleting = false;
              litems.insert(id, deleteItem);
            });
          },
        ),
      ),
    );
    //start a 3s timer
   /* Timer.periodic(const Duration(seconds: 3), (timer) async {
      if (isUndoPressed) {
        //can if undo button is pressed.
        timer.cancel();
        setState(() {
          isDeleting = false;
        });
      } else {
        litems.remove(litems[id]); // To delete the data in List
        isUndoPressed = false;
        setState(() {
          isDeleting = false;
        });
      }
    });*/
  }

  //Edit an item
  void editeItem(int id) {
    setState(() {
      titel_val.text = litems[id];
      idU = id;
      print(litems);
    });
  }

  @override
  Widget build(BuildContext ctxt) {
    String cdate_roq = DateFormat("MMM, dd, yyyy").format(DateTime.now());
    String tdata_roq = DateFormat("hh:mm:ss a").format(DateTime.now());
    //////////////////////// to get Date and time together
    // String nowDateTime = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateTime.now());
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dynamic Demo"),
      ),
      body: new Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: new
          TextField(
            decoration: const InputDecoration(
                hintText: 'Add the Title'),
            controller: titel_val,
            onSubmitted: (String text) {
              idU == 1000 ? litems.add(text) :
              litems[idU] = (text);
              idU = 1000;
              titel_val.clear();
              setState(() {});
            },
          ),
        ),
        new Expanded(
          child: ListView.builder(
            itemCount: litems.length,
            itemBuilder: (context, index) =>
                Card(
              color: Colors.orange[200],
              margin: const EdgeInsets.all(5),
              child: ListTile(
                  title: Text(litems[index]),
                  subtitle: Text("Date :$cdate_roq   Time : $tdata_roq"),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              editeItem(index);
                            }),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _deleteItem(index, litems[index]),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        )
      ]),
    );
  }
}

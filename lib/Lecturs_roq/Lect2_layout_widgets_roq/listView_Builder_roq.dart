import 'package:flutter/material.dart';

void main() {
  runApp(ListViewBuilder_Roq());
}

class ListViewBuilder_Roq extends StatelessWidget {
  const ListViewBuilder_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Listview_builder_Roq_Ex(
            products_roq:
                List<String>.generate(500, (i) => "Product List_roq: $i")));
  }
}

class Listview_builder_Roq_Ex extends StatelessWidget {
  final List<String> products_roq;

  Listview_builder_Roq_Ex({Key? key, required this.products_roq})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Long List Roq';

    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: ListView.builder(
        itemCount: products_roq.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${products_roq[index]}'),
          );
        },
      ),
    );
  }
}

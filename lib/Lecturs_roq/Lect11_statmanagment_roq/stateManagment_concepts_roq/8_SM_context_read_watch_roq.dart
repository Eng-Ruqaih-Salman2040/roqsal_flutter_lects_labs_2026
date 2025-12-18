import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SM_Context_read_watch_Roq extends StatelessWidget {
  const SM_Context_read_watch_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Provider_Roq(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("SM context.watch or read"),
          ),
          body: WidgetChild_Roq(),
        ));
  }
}

class WidgetChild_Roq extends StatelessWidget {
  const WidgetChild_Roq({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   // var prov_roq = Provider.of<Provider_Roq>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Center(child: Text("Welcome : ${context.watch<Provider_Roq>().name}")),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Do Something"),
              onPressed: () {
                context.read<Provider_Roq>().changText_Funroq();
                //print("Name is after change :${prov_roq.name}");
              })
        ],
      ),
    );
  }
}

class Provider_Roq extends ChangeNotifier {
  String name = "empty";

  changText_Funroq() {
    name = "Ruqaih Salman";
    notifyListeners();
  }
}

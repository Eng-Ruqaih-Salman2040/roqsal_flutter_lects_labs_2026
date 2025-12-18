import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SM_Provider_of_Context_Roq extends StatelessWidget {
  const SM_Provider_of_Context_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Provider_Roq(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("SM Provider.of(contxt)"),
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
    Provider_Roq prov_roq = Provider.of<Provider_Roq>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Center(child: Text("Welcome : ${prov_roq.name}")),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Do Something"),
              onPressed: () {
                prov_roq.changText_Funroq();
                print("Name is after change :${prov_roq.name}");
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

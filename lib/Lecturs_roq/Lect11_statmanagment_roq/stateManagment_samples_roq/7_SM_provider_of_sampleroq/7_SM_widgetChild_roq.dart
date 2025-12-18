import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '7_SM_provider_roq.dart';

class SampleWidgetChild_Roq extends StatelessWidget {
  const SampleWidgetChild_Roq({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var prov_roq = Provider.of<SampleProvider_Roq>(context,listen: true);
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
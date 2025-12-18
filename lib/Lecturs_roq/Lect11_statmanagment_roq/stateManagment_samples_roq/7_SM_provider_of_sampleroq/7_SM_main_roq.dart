import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '7_SM_provider_roq.dart';
import '7_SM_widgetChild_roq.dart';


class SampleProvider_of_Context_Roq extends StatelessWidget {
  const SampleProvider_of_Context_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SampleProvider_Roq(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Sample Provider.of(contxt)"),
          ),
          body: SampleWidgetChild_Roq(),
        ));
  }
}
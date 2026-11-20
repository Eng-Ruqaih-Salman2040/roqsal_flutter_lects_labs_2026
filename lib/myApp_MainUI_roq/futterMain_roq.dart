import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../myApp_Data_Settings_roq/my_app_settings.dart';
import 'my_app_routes.dart' show kHomeRoute;

/// Use the root MaterialApp navigator; do not nest a second MaterialApp.
class FlutterMain_Roq extends StatelessWidget {
  const FlutterMain_Roq({super.key});

  @override
  Widget build(BuildContext context) => kHomeRoute;
}

/// Compatibility entry point for callers that provide preferences explicitly.
class Myflutter_MainPage_Roq extends StatelessWidget {
  const Myflutter_MainPage_Roq(this.sharedPref, {super.key});
  final SharedPreferences sharedPref;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<MyAppSettings>(
    create: (_) => MyAppSettings(sharedPref),
    child: const FlutterMain_Roq(),
  );
}

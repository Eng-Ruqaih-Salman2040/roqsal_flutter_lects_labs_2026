import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'myApp_Data_Settings_roq/constants.dart';
import 'myApp_Data_Settings_roq/my_app_settings.dart';
import 'myApp_Data_Settings_roq/thems_roq.dart';
import 'myApp_LeadingScreen_roq/SplashScreen_roq.dart';
import 'myApp_LeadingScreen_roq/introPage_roq.dart';
import 'myApp_MainUI_roq/futterMain_roq.dart';
import 'myApp_MainUI_roq/my_app_routes.dart' show kAppRoutingTable;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyMainApp_Roq(prefs));
}

class MyMainApp_Roq extends StatelessWidget {
  const MyMainApp_Roq(this.sharedPref, {super.key});
  final SharedPreferences sharedPref;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<MyAppSettings>(
    create: (_) => MyAppSettings(sharedPref),
    child: const MyMainMaterial_Screen_Roq(),
  );
}

class MyMainMaterial_Screen_Roq extends StatelessWidget {
  const MyMainMaterial_Screen_Roq({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = context.watch<MyAppSettings>().isDarkMode;
    return MaterialApp(
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: dark ? darkThemeData(context) : lightThemeData(context),
      home: const SplashScreen_Roq(),
      routes: <String, WidgetBuilder>{
        Splash_rout_Roq: (_) => const SplashScreen_Roq(),
        IntroScreen_rout_Roq: (_) => const IntroScreen_Roq(),
        flutterMain_rout_Roq: (_) => const FlutterMain_Roq(),
        // '/' belongs to [home]. All other examples use this root Navigator.
        for (final MapEntry<String, WidgetBuilder> entry
            in kAppRoutingTable.entries)
          if (entry.key != Navigator.defaultRouteName)
            entry.key: entry.value,
      },
    );
  }
}

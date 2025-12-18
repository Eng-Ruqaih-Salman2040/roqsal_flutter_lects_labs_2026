import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'my_app_routes.dart' show kAppRoutingTable;
import '../myApp_Data_Settings_roq/my_app_settings.dart';
import '../myApp_Data_Settings_roq/thems_roq.dart';

class FlutterMain_Roq extends StatefulWidget {
  const FlutterMain_Roq({Key? key}) : super(key: key);

  @override
  _FlutterMain_RoqState createState() => _FlutterMain_RoqState();
}

class _FlutterMain_RoqState extends State<FlutterMain_Roq> {
  Future<void> Fluttermain_FunRoq() async {
    WidgetsFlutterBinding.ensureInitialized();
    /*if (kIsOnMobile) {
    await Firebase.initializeApp();
  }*/
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    runApp(Myflutter_MainPage_Roq(sharedPref));
  }

  @override
  void initState() {
    Fluttermain_FunRoq();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

////////////////////////////////////////////////////
class Myflutter_MainPage_Roq extends StatelessWidget {
  final SharedPreferences sharedPref;

  const Myflutter_MainPage_Roq(this.sharedPref, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyAppSettings>.value(
      value: MyAppSettings(sharedPref),
      child: const _MyMaterialApp(),
    );
  }
}

//final appBarTheme = AppBarTheme(color:pPrimaryColor, centerTitle: false, elevation: 0);
class _MyMaterialApp extends StatelessWidget {
  const _MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Guid Roq',
      theme: Provider.of<MyAppSettings>(context).isDarkMode
          ? darkThemeData(context)
          : lightThemeData(context), //kDarkThem_roq,
      routes: kAppRoutingTable,
      // themeMode: ThemeMode.system,
    );
  }
}

import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'myApp_Data_Settings_roq/constants.dart';
import 'myApp_Data_Settings_roq/my_app_settings.dart';
import 'myApp_Data_Settings_roq/thems_roq.dart';
import 'myApp_LeadingScreen_roq/SplashScreen_roq.dart';
import 'myApp_LeadingScreen_roq/introPage_roq.dart';
import 'myApp_MainUI_roq/futterMain_roq.dart';

Future<void> main() async {
  /* await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);*/


  WidgetsFlutterBinding.ensureInitialized();
  /*if (kIsOnMobile) {
    await Firebase.initializeApp();}*/
  final SharedPreferences sharedPref = await SharedPreferences.getInstance();
  runApp(MyMainApp_Roq(sharedPref));

}

class MyMainApp_Roq extends StatelessWidget {
  final SharedPreferences sharedPref;
  const MyMainApp_Roq(this.sharedPref, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyAppSettings>.value(
      value: MyAppSettings(sharedPref),
      child: const MyMainMaterial_Screen_Roq(),
    );
  }
}
//final appBarTheme = AppBarTheme(color:pPrimaryColor, centerTitle: false, elevation: 0);


class MyMainMaterial_Screen_Roq extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
      Platform.isAndroid ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));*/
    return MaterialApp(

      title: 'Flutter Guid Roq',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<MyAppSettings>(context).isDarkMode
          ?
      darkThemeData(context):
      lightThemeData(context),


      /* theme: ThemeData(
        //primarySwatch: Colors.green,
        //platform: TargetPlatform.android,
      ),*/
      home: SplashScreen_Roq(),
      routes: <String, WidgetBuilder>{
        Splash_rout_Roq: (BuildContext context) =>const  SplashScreen_Roq(),
        flutterMain_rout_Roq:(BuildContext context) => const FlutterMain_Roq(),
        IntroScreen_rout_Roq:(BuildContext context) =>const IntroScreen_Roq(),
        //FlutterGuide_routs_Roq:(BuildContext context) => new FlutterGuide_Screens_Roq(),

      },
    );
  }

  const MyMainMaterial_Screen_Roq({super.key});
}

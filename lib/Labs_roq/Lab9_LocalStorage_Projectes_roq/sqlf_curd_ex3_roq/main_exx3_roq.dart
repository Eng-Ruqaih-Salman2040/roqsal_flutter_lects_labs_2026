import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roqsal_flutter_lects_labs_2026/Labs_roq/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex3_roq/page/notes_page.dart';
//import 'package:flutter_laps_samples_roq_2022/Lab9_LocalStorage_Projectes_roq/sqlf_curd_ex3_roq/page/notes_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Main_Sqlf_Ex3_Roq());
}

class Main_Sqlf_Ex3_Roq extends StatelessWidget {
  static final String title = 'Notes SQLite';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,

        title: title,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.blueGrey.shade900,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        home: NotesPage(),
      );
}

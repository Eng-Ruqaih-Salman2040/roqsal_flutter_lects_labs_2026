import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/*const PrimaryColor = const Color(0xFFb71c1c);
const PrimaryColorLight = const Color(0xFFf05545);
const PrimaryColorDark = const Color(0xFF7f0000);

const SecondaryColor = const Color(0xFFb2dfdb);
const SecondaryColorLight = const Color(0xFFe5ffff);
const SecondaryColorDark = const Color(0xFF82ada9);

const Background = const Color(0xFFfffdf7);
const TextColor = const Color(0xFF000000);*/
 Color? pPrimaryColor;
 Color? pMedColor;
 Color? pSecondaryColor;


Color pContentColorLightTheme = Color(0xFF1D1D35);
Color pContentColorDarkTheme = Color(0xFFF5FCF9);
Color pWarninngColor = Color(0xFFF3BB1C);
Color pErrorColor = Color(0xFFF03738);
////////////////////////////////////////
final appBarTheme = AppBarTheme(color:pPrimaryColor, centerTitle: false, elevation: 0);
ThemeData lightThemeData(BuildContext context) {
  /////////////////////////Theme 1 //////////////////////
  pPrimaryColor = Color(0xff5d1762);
  //pPrimaryColor = Color(0xFFba2d65);
  pMedColor = Color(0xFFf06292);
  pSecondaryColor =Color(0xFFff94c2);
/////////////////////////Theme 2 //////////////////////
/*pPrimaryColor = Color(0xFF1a746b);
pMedColor = Color(0xFF26a69a);
pSecondaryColor = Color(0xFF51b7ae);*/
////////////////////////// Theme 3 ///////////////////////
/*  pPrimaryColor = Color(0xFFc79100);
  pMedColor = Color(0xFFffc107);
  pSecondaryColor = Color(0xFFfff350);*/
//////////////////////////// Theme 4 /////////////////////
  /*pPrimaryColor = Color(0xFF6a0080);
  pMedColor = Color(0xFF9c27b0);
  pSecondaryColor = Color(0xFFd05ce3);*/


  return
    ThemeData.light().copyWith(
      primaryColor: pPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: pContentColorLightTheme),
      textTheme:
      GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: pContentColorLightTheme),
      colorScheme: ColorScheme.light(
        primary: pPrimaryColor!,
        secondary: pSecondaryColor!,
        error: pErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: pContentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: pContentColorLightTheme.withOpacity(0.42),
        selectedIconTheme: IconThemeData(color: pPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
}
ThemeData darkThemeData(BuildContext context) {
  return
    ThemeData.dark().copyWith(
      //visualDensity: VisualDensity.adaptivePlatformDensity,
      //primaryColor: pPrimaryColor,
      scaffoldBackgroundColor: pContentColorLightTheme,
      //scaffoldBackgroundColor: Colors.black,
     appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: pContentColorDarkTheme),

      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: pContentColorDarkTheme),
     ///////////// “flutter: google font entire app” Code Answer
     /* textTheme: GoogleFonts.russoOneTextTheme(
        Theme.of(context).textTheme,),*/

      colorScheme: ColorScheme.dark().copyWith(
        //primary: pPrimaryColor,
        //secondary: pSecondaryColor,
        error: pErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: pContentColorLightTheme,
        selectedItemColor: Colors.white70,
        unselectedItemColor: pContentColorDarkTheme.withOpacity(0.42),
        selectedIconTheme: IconThemeData(color: pPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
}



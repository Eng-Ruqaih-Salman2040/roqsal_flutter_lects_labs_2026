import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui';

//import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../myApp_MainUI_roq/my_app_routes.dart';
import '../myApp_MainUI_roq/my_route.dart';
//import 'moduleClasses_roq.dart';


// ignore_for_file: constant_identifier_names

// *Note*: when APP_VERSION is changed, remember to also update pubspec.yaml.
const String APP_VERSION = 'v1.0.0';
const String APP_NAME = 'Flutter Guide';
final Image kAppIcon =
//Image.asset('assets/images/flutter_logoRoq.jpeg', height: 64.0, width: 64.0,fit:BoxFit.cover,);
Image.asset('assets_roq/images_roq/dartIcon5.png', height: 64.0, width: 64.0,fit:BoxFit.cover,);
final Image kAppIcondark =
Image.asset('assets_roq/images_roq/dartIcon10.jpg', height: 64.0, width: 64.0,fit:BoxFit.cover,);

const String APP_DESCRIPTION = 'Best tutorial app for learning the core and advanced concepts in Dart programming language with syntax highlight, exercises and quiz.'
    '\n\nDeveloped by Eng:Ruqaih Salman';
const String GOOGLEPLAY_URL =
    'https://play.google.com/store/apps/details?id=io.github.x_wei.flutter_catalog';
const GITHUB_URL = 'https://github.com/X-Wei/flutter_catalog';
const AUTHOR_SITE = 'http://x-wei.github.io';


////////////////////////////////////////// Update in Catalog App 2023 ////////////////////////////
final kPlatformType = getCurrentPlatformType();
// Whether the app is running on mobile phones (Android/iOS)
final kIsOnMobile =
{PlatformType.Android, PlatformType.iOS}.contains(kPlatformType);

final kIsMobileOrWeb = kIsWeb ||
    defaultTargetPlatform == TargetPlatform.iOS ||
    defaultTargetPlatform == TargetPlatform.android;

//final kAnalytics = kIsMobileOrWeb ? FirebaseAnalytics.instance : null;

/// ! Adapted from https://www.flutterclutter.dev/flutter/tutorials/how-to-detect-what-platform-a-flutter-app-is-running-on/2020/127/
enum PlatformType { Web, iOS, Android, MacOS, Fuchsia, Linux, Windows, Unknown }

PlatformType getCurrentPlatformType() {
  // ! `Platform` is not available on web, so we must check web first.
  if (kIsWeb) {
    return PlatformType.Web;
  }

  if (Platform.isMacOS) {
    return PlatformType.MacOS;
  }

  if (Platform.isFuchsia) {
    return PlatformType.Fuchsia;
  }

  if (Platform.isLinux) {
    return PlatformType.Linux;
  }

  if (Platform.isWindows) {
    return PlatformType.Windows;
  }

  if (Platform.isIOS) {
    return PlatformType.iOS;
  }

  if (Platform.isAndroid) {
    return PlatformType.Android;
  }

  return PlatformType.Unknown;
}


buildText_funroq(String text_roq) {
  return
    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          const Divider( thickness: 2,),
          Text("$text_roq",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],
                fontFamily: Utils_Roq.ubuntuRegularFont),
            ),
          const Divider( thickness: 2,),
        ],
      ),
    );
}
Text buildText_Content_funroq(String text_cont_roq) {
  return Text("$text_cont_roq"
    ,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.black54,
        fontSize: 14.0,
        fontStyle: FontStyle.italic,
        fontFamily: Utils_Roq.ubuntuRegularFont),
  );
}

/////////////////////////////////////////////////////////////////

/*final PlatformType kPlatformType = getCurrentPlatformType();
// Whether the app is running on mobile phones (Android/iOS)
final bool kIsOnMobile = {PlatformType.Android, PlatformType.iOS}.contains(kPlatformType);

/// ! Adapted from https://www.flutterclutter.dev/flutter/tutorials/how-to-detect-what-platform-a-flutter-app-is-running-on/2020/127/
enum PlatformType { Web, iOS, Android, MacOS, Fuchsia, Linux, Windows, Unknown }

PlatformType getCurrentPlatformType() {
  // ! `Platform` is not available on web, so we must check web first.
  if (kIsWeb) {
    return PlatformType.Web;
  }

  if (Platform.isMacOS) {
    return PlatformType.MacOS;
  }

  if (Platform.isFuchsia) {
    return PlatformType.Fuchsia;
  }

  if (Platform.isLinux) {
    return PlatformType.Linux;
  }

  if (Platform.isWindows) {
    return PlatformType.Windows;
  }

  if (Platform.isIOS) {
    return PlatformType.iOS;
  }

  if (Platform.isAndroid) {
    return PlatformType.Android;
  }

  return PlatformType.Unknown;
}*/
///////////////////////////// Utils_Roq Class ///////////


class Utils_Roq {
  ///Method to get a random color
  static getRandomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  static List<Color> buttonGradient = [Colors.cyan.shade600, Colors.blue.shade600];

  //routes

  //fonts
  static const String ubuntuFont = "Ubuntu";
  static const String crimsonFont = "Crimson";
  static const String ubuntuRegularFont = "Ubuntu-Regular.ttf";
  static const String crimsonRegularFont = "CrimsonText-Regular.ttf";

//descriptions
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}

///////////////////////////////  About Dummey Class==> More app
class Wizerd_myApps {

  late String image;
  late String background;
  late String title;
  late String brief_content;
  late String appUrl;
  late String App_subtitle;
  late Color color;

}

class Dummy_More_App {
  //  wizard data --------------------------------------------------------------

  static const List<String> App_title = [
    "Awesome Fluter",
    "Flutter Guide",
    "Animation Guide",
    "UI ٍSamples",
    "App Samples",
  ];
  static const List<String> App_Subtitle = [
    "Awesome tutorial comprehensive app of Flutter",
    "Flutter Guide",
    "Flutter Animation Guide",
    "Component and UI ٍSamples by Flutter",
    "Flutter App Samples",
  ];
  static const List<String> App_brief_content = [
    """ 
    Awesome  app devloped and designed for Devloper using Flutter.
    It contines many sections  to learn Dart, Flutter, Animations in flutter and many used Screens(UIs).In addition Widgets, Features,Functions, Integrations and Animations for Android devices.
After completing our Flutter training, we have presented a set of 
Flutter interview questions to prepare for Flutter job interviews.
Finally, we have presented quiz demo helps 
you to do the same. You may avail much general knowledge
 but our app helps you to improve your general knowledge easily
and fastly. Quiz Power is an android quiz app with single 
question with four answer options""",
    """
     FlutterGuide app devloped and designed for Devloper using Flutter.
    It contines many sections to learn Flutter as follows:
    - Core concepts of Flutter. 
    - Advanced concepts of Flutter .
    - Top Flutter Interview Questions and Answers.
    - Top Flutter Exercises Questions.
    - Quiz and test your Flutter skill.

    """,
    """
    Flutter Animation Guid Application will help flutter developers to understand of how flutter animation works.
FEATURES :
-- Easy way to explain.
- Flutter Multiple Animation.
- Free source code.
- Free of Cost.
- Clean and simple UI.
- Separated part for animation
    """,
    /*"""
    - Dart is open-source general-purpose programming language.

    - Understanding the core and advance programming concepts.""",
    """
    Core concepts of Dart such as storing data, conditions, loops, functions  and much more.
Advanced concepts of Dart  such as   collections, OOP , Exceptions, Null safty, Async Programming in Dart and much more.
Top Dart Interview Questions and Answers blog to assist you in preparing for your interview.
Top  Dart Exercises Questions for each concept in the Dart language
Quiz and test your dart skill.

    """*/
    """
    Flutter UI Samples app devloped and designed for Devloper using Flutter.
    It contines many ready to used Screens(UI),Widgets, Features,Functions, 
    Integrations and Animations for IOS and Android devices.
  
  """,

    """
    Flutter UI Samples are  a collection of open source samples that illustrate best practices  for Flutter. Flutter  UIs — will  help you to  kickstart your own project with one of these templates 
     or you can pick out a specific component that catches your eye.
    """,

  ];
  static const List<String> App_image = [
    "slider_2.png","slider_1.png", "slider_3.png", "slider_1.png", "slider_2.png",
  ];
  static const List<String> App_background = [
    "image_15.jpg", "image_10.jpg", "image_3.jpg", "image_12.jpg", "image_12.jpg"
  ];
  static const List<String> App_URL = [
    GOOGLEPLAY_URL, GOOGLEPLAY_URL, GOOGLEPLAY_URL, GOOGLEPLAY_URL, GOOGLEPLAY_URL
  ];

  static const List<Color> App_color = [
    Colors.red,
    Colors.blueGrey,
    Colors.purple,
    Colors.orange,
    Colors.blueAccent,
  ];


  static List<Wizerd_myApps> getMyApps() {
    List<Wizerd_myApps> App_items = [];
    for (int i = 0; i < App_title.length; i++) {
      Wizerd_myApps obj = new Wizerd_myApps();
      obj.image = App_image[i];
      obj.background = App_background[i];
      obj.title = App_title[i];
      obj.brief_content = App_brief_content[i];
      obj.color = App_color[i];
      obj.appUrl=App_URL[i];
      obj.App_subtitle=App_Subtitle[i];
      App_items.add(obj);
    }
    return App_items;
  }
}

class Constants{
  static const String POPPINS = "Poppins";
  static const String OPEN_SANS = "OpenSans";
  static const String SKIP = "Skip";
  static const String NEXT = "Next";
  static const String DONE = "Done";
  static const String SLIDER_HEADING_1 = "Welcome!";
  static const String SLIDER_HEADING_2 = "Dart Guide!";
  static const String SLIDER_HEADING_3 = "Flutter Guide";
  static const String SLIDER_HEADING_4 = "Flutter Animation Guide";
  static const String SLIDER_HEADING_5 = "Flutter Widget UI ";
  static const String SLIDER_HEADING_6 = "Flutter Apps UI ";
  static const String SLIDER_DESC = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultricies, erat vitae porta consequat.";

}
const String LandingScreen_rout_Roq='/LandingScreen_Roq',
    IMAGE_SPLASH='/ImageSplashScreen',
    VIDEO_SPALSH='/VideoSplashScreen_Roq',
    Splash_rout_Roq='/AnimatedSplashScreen',
    flutterMain_rout_Roq='/FlutterMain_Roq',
    IntroScreen_rout_Roq='/IntroScreen_Roq'
;
class IntroScr_Wizard {

  late String image;
  late String background;
  late String title;
  late String brief;
  late Color color;

}
class Dummy_IntroScr{
  //  wizard data --------------------------------------------------------------

  static const List<String> wizard_title = [
    "What Will Learn?",
    "What will be the contents?",
    "Who is the target audience?",
    "Why Will learn Dart?",
    "Requirements",
  ];
  static const List<String> wizard_brief = [
    """ 
    - Dart is open-source general-purpose programming language.
    - Understanding the core and advance programming concepts.""",
    """
    - Core concepts of Dart. 
    - Advanced concepts of Dart .
    - Top Dart Interview Questions and Answers.
    - Top Dart Exercises Questions.
    - Quiz and test your dart skill.

    """,
    /*"""
    - Dart is open-source general-purpose programming language.

    - Understanding the core and advance programming concepts.""",
    """
    Core concepts of Dart such as storing data, conditions, loops, functions  and much more.
Advanced concepts of Dart  such as   collections, OOP , Exceptions, Null safty, Async Programming in Dart and much more.
Top Dart Interview Questions and Answers blog to assist you in preparing for your interview.
Top  Dart Exercises Questions for each concept in the Dart language
Quiz and test your dart skill.

    """*/
    """
    - For absolute beginners who want to pursue a new skill and learn Flutter in the near future.
- Our app will be quite helpful for all those devlopers who want to devlope mobile applications using Dart.
- It is meant for programming with a strong hold on object-orinted concepts.
    """,
    """
    
    - Used to devlop Web applications, Android applications, and desktop applications with ease
- Used with Flutter to create web and mobile  applications .
- New in the industry, but demand is increasing day by day
    """,
    """
    - This course assumes that you have previous programming experience
- Experience in java or javaScript makes learning Dart super easy
    """,

  ];
  static const List<String> wizard_image = [
    "slider_2.png","slider_1.png", "slider_3.png", "slider_1.png", "slider_2.png",
  ];
  static const List<String> wizard_background = [
    "image_15.jpg", "image_10.jpg", "image_3.jpg", "image_12.jpg", "image_12.jpg"
  ];
  static const List<Color> wizard_color = [
    Colors.red,
    Colors.blueGrey,
    Colors.purple,
    Colors.orange,
    Colors.blueAccent,
  ];
  static List<IntroScr_Wizard> IntroScr_getWizard() {
    List<IntroScr_Wizard> items = [];
    for (int i = 0; i < wizard_title.length; i++) {
      IntroScr_Wizard obj = new IntroScr_Wizard();
      obj.image = wizard_image[i];
      obj.background = wizard_background[i];
      obj.title = wizard_title[i];
      obj.brief = wizard_brief[i];
      obj.color = wizard_color[i];
      items.add(obj);
    }
    return items;
  }
}
class MyText{
/////////////////////////////////// Materialx Flutter ///////////////
  static  TextStyle? display4(BuildContext context){
    return Theme.of(context).textTheme.displayLarge;
  }

  static TextStyle? display3(BuildContext context){
    return Theme.of(context).textTheme.displayMedium;
  }

  static TextStyle? display2(BuildContext context){
    return Theme.of(context).textTheme.displaySmall;
  }

  static TextStyle? display1(BuildContext context){
    return Theme.of(context).textTheme.headlineMedium;
  }

  static TextStyle? headline(BuildContext context){
    return Theme.of(context).textTheme.headlineSmall;
  }

  static TextStyle? title(BuildContext context){
    return Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle? medium(BuildContext context){
    return Theme.of(context).textTheme.titleMedium?.copyWith(
      fontSize: 18,
    );
  }

  static TextStyle? subhead(BuildContext context){
    return Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? body2(BuildContext context){
    return Theme.of(context).textTheme.bodyLarge;
  }

  static TextStyle? body1(BuildContext context){
    return Theme.of(context).textTheme.bodyMedium;
  }

  static TextStyle? caption(BuildContext context){
    return Theme.of(context).textTheme.bodySmall;
  }

  static TextStyle? button(BuildContext context){
    return Theme.of(context).textTheme.labelLarge;
  }

  static TextStyle? subtitle(BuildContext context){
    return Theme.of(context).textTheme.titleSmall;
  }

  static TextStyle? overline(BuildContext context){
    return Theme.of(context).textTheme.labelSmall;
  }
}



class MyColors {

  static const Color primary = Color(0xFF1976D2);
  static const Color primaryDark = Color(0xFF1565C0);
  static const Color primaryLight = Color(0xFF1E88E5);
  static const Color accent = Color(0xFFFF4081);
  static const Color accentDark = Color(0xFFF50057);
  static const Color accentLight = Color(0xFFFF80AB);

  static const Color grey_3 = Color(0xFFf7f7f7);
  static const Color grey_5 = Color(0xFFf2f2f2);
  static const Color grey_10 = Color(0xFFe6e6e6);
  static const Color grey_20 = Color(0xFFcccccc);
  static const Color grey_40 = Color(0xFF999999);
  static const Color grey_60 = Color(0xFF666666);
  static const Color grey_80 = Color(0xFF37474F);
  static const Color grey_90 = Color(0xFF263238);
  static const Color grey_95 = Color(0xFF1a1a1a);
  static const Color grey_100_ = Color(0xFF0d0d0d);


}
/*Load image from folder assets/images/
 */
class Img {
  static String get(String name){
    return 'assets_roq/assets_lect_roq/images_roq/'+name;
  }
}

//////////////////////////////////
class DomePro {
  final String title;
  final String demoproSh;
  final String sourceCode;
  final String readmore;
  List<Widget>? images = [];

  //List<String> images = [];
  final IconData icon;

  DomePro(
      this.title,
      this.demoproSh,
      this.sourceCode,
      this.readmore,
      this.images,
      this.icon,
      );
}


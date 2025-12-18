import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;


import '../myApp_Data_Settings_roq/Utils_roq.dart';
import '../myApp_Data_Settings_roq/constants.dart';
import '../myApp_Data_Settings_roq/my_app_settings.dart';


// Inspired by the about page in Eajy's flutter demo:
// https://github.com/Eajy/flutter_demo/blob/master/lib/route/about.dart
class MyAboutRoute extends StatelessWidget {
  const MyAboutRoute({Key? key}) : super(key: key);

  // These tiles are also used as drawer nav items in home route.
  static final List<Widget> kAboutListTiles = <Widget>[
    const ListTile(
      title: Text(APP_DESCRIPTION),
    ),
    const Divider(),
    ListTile(
      leading: const Icon(Icons.star),
      title: const Text('Rate app'),
      onTap: () => url_launcher.launch(GOOGLEPLAY_URL),
    ),
    ListTile(
      leading: const Icon(Icons.feedback_rounded),
      title: const Text('Send Feedback'),
      onTap: () => url_launcher.launch(GITHUB_URL),
    ),
    ListTile(
      leading: const Icon(Icons.favorite),
      title: const Text('Follow Us(Get Latest Update)'),
      onTap: () => url_launcher.launch('$GITHUB_URL/issues'),
    ),
    /*ListTile(
      leading: const Icon(Icons.open_in_new),
      title: const Text('Visit my website'),
      onTap: () => url_launcher.launch(AUTHOR_SITE),
    ),*/
  ];

  @override
  Widget build(BuildContext context) {
    bool ThemeType_roq = Provider.of<MyAppSettings>(context).isDarkMode;
    final ListTile header = ListTile(
      leading: kAppIcon,
      title: const Text(APP_NAME),
      subtitle: const Text(APP_VERSION),
      trailing: IconButton(
        icon: const Icon(Icons.info),
        onPressed: () {
          showAboutDialog(
              context: context,
              applicationName: APP_NAME,
              applicationVersion: APP_VERSION,
              applicationIcon: kAppIcon,
              children: <Widget>[const Text(APP_DESCRIPTION)]);
        },
      ),
    );
    return About_Roq();

    ListView(
      children: <Widget>[
        header,
        ...kAboutListTiles,
        ExpansionTile(
          leading: Icon(Icons.library_books), //myRouteGroup.icon,
          title: Text(
            "More Flutter Apps",
            //style: Theme.of(context).textTheme.titleMedium,
          ),
          children: [
            Card(
              //elevation: 10,
              child: ListTile(
                leading: Icon(Icons.library_books),

                title: Text(
                    "ِAwesome Flutter Guide" /*, style: Theme.of(context)
      .textTheme
      .bodyText2!
      .copyWith(fontWeight: FontWeight.bold)*/
                ),
                trailing:
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.info_outline),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Center(
                              child: Text(
                                "Awesome Flutter Guide",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  //fontFamily: Utils.ubuntuRegularFont),
                                ),
                              )),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                """Awesome  app devloped and designed for Devloper using Flutter.It contines many sections  to learn Dart, Flutter, Animations in flutter and many used Screens(UIs).In addition Widgets, Features,Functions, Integrations and Animations for Android devices.
After completing our Flutter training, we have presented a set of Flutter interview questions to prepare for Flutter job interviews.
Finally, we have presented quiz demo helps 
you to do the same. You may avail much general knowledge
 but our app helps you to improve your general knowledge easily
  and fastly. Quiz Power is an android quiz app with single 
  question with four answer options.""",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Utils.ubuntuRegularFont,
                                    fontWeight: FontWeight.w300),
                                textAlign: TextAlign.center,
                              ),
                              /* TextButton(
                                onPressed: () => {
                                 // Utils.launchURL(item.url),
                                  Navigator.pop(context)
                                },
                                //splashColor: Colors.transparent,
                                //highlightColor: Colors.transparent,
                                // makes highlight invisible too
                                child: Text('(Official Documentation)',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: Utils.crimsonRegularFont,
                                        color: Colors.cyan)),
                              ),*/
                              RawMaterialButton(
                                  onPressed: () =>
                                      url_launcher.launch(GOOGLEPLAY_URL),
                                  elevation: 2.0,
                                  fillColor: Colors.white,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      ThemeType_roq
                                          ? "assets/images/googleplay.png"
                                          : "assets/images/googleplay3.png", /*height:40,
                                        width:122,fit: BoxFit.fill*/
                                    ),
                                  ),

                                  //padding: EdgeInsets.all(15.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(
                                          color: Colors.grey.shade400))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () => url_launcher.launch(GOOGLEPLAY_URL),
                        icon: const Icon(Icons.open_in_browser)),
                  ],
                ),

                subtitle: Text(""),
                //onTap: () => url_launcher.launch(GOOGLEPLAY_URL),
              ),
            ),
            Card(
              //elevation: 10,
              child: ListTile(
                leading: Icon(Icons.library_books),
                title: Text(
                    "ِFlutter Animation Guide" /*, style: Theme.of(context)
      .textTheme
      .bodyText2!
      .copyWith(fontWeight: FontWeight.bold)*/
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                subtitle: Text(
                    """Awesome  app devloped and designed for Devloper using Flutter. It contines many sections  to learn Dart, Flutter, Animations in flutter and many used Screens(UIs), Widgets, Features,Functions, Integrations and Animations for Android devices.
After completing our Flutter training, we have presented a set of Flutter interview questions to prepare for Flutter job interviews.
Finally, our Flutter App  has  presented quiz demo helps you to do the same. You may avail much general knowledge but our app helps you to improve your general knowledge easily and fastly. Quiz Power is an android quiz app with single question with four answer options."""),
                onTap: () => url_launcher.launch(GOOGLEPLAY_URL),
              ),
            ),
            Card(
              //elevation: 10,
              child: ListTile(
                leading: Icon(Icons.library_books),
                title: Text(
                    "ِFlutter UI Samples" /*, style: Theme.of(context)
      .textTheme
      .bodyText2!
      .copyWith(fontWeight: FontWeight.bold)*/
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                subtitle: Text(
                    """Awesome  app devloped and designed for Devloper using Flutter. It contines many sections  to learn Dart, Flutter, Animations in flutter and many used Screens(UIs), Widgets, Features,Functions, Integrations and Animations for Android devices.
After completing our Flutter training, we have presented a set of Flutter interview questions to prepare for Flutter job interviews.
Finally, our Flutter App  has  presented quiz demo helps you to do the same. You may avail much general knowledge but our app helps you to improve your general knowledge easily and fastly. Quiz Power is an android quiz app with single question with four answer options."""),
                onTap: () => url_launcher.launch(GOOGLEPLAY_URL),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class About_Roq extends StatefulWidget {
  const About_Roq({Key? key}) : super(key: key);

  @override
  _About_RoqState createState() => _About_RoqState();
}

class _About_RoqState extends State<About_Roq> {
  List<Wizerd_myApps> AppData = Dummy_More_App.getMyApps();
  @override
  Widget build(BuildContext context) {
    bool ThemeType_roq = Provider.of<MyAppSettings>(context).isDarkMode;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //=>color: Colors.white,
            elevation: 2,
            clipBehavior: Clip.antiAlias,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ClipOval(
                          child: ThemeType_roq ? kAppIcondark : kAppIcon),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("$APP_NAME",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(color: Colors.grey[80])),
                          Container(height: 2),
                          Text("ruqsal3.flutter3@gmail.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold))
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(height: 20),

                  Row(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.info, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Version",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500)),
                          Container(height: 2),
                          Text("$APP_VERSION",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold))
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.star, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Rate App",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500)),
                          Container(height: 2),
                          /*Text("$APP_VERSION",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold))*/
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.share, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Share App",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500)),
                          Container(height: 2),
                          /*Text("$APP_VERSION",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold))*/
                        ],
                      ),
                      Spacer(),
                    ],
                  ),

                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.book, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Text("License",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.grey[60])),
                      Spacer(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.lock_open, color: Colors.grey[4]),
                          width: 50),
                      Container(width: 15),
                      Text("Get Pro-Unlock Everything",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.grey[60])),
                      Spacer(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child:
                          Icon(Icons.file_download, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Text("Download From Github",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                              color: Colors.grey[60],
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                    ],
                  )


                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //color: Colors.white,
            elevation: 2,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(width: 6),
                      Text("Author",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                              color: Colors.grey[80],
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.person, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Ruqaih Salman",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500)),
                          Container(height: 2),
                          Text("Yemen Contery",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold))
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child:
                          Icon(Icons.email, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500)),
                          Container(height: 2),
                          Text("ruqsal3.flutter3@gmail.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold)),
                        ],
                      ),

                      Spacer(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.message, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Send Us Feadback",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500)),
                          Container(height: 2),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(height: 20),
                  Row(
                    children: <Widget>[
                      Container(
                          child:
                          Icon(Icons.favorite, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Follow Us",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500)),
                          Container(height: 2),
                          Text("Get Latest Update",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold)),
                        ],
                      ),

                      Spacer(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //color: Colors.white,
            elevation: 2,
            clipBehavior: Clip.antiAliasWithSaveLayer,

            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(width: 6),
                      Text("More Apps",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                              color: Colors.grey[80],
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Container(height: 20),
                  for(Wizerd_myApps app in AppData)
                    buildMoreApps_FunRoq(context, ThemeType_roq,app.title,app.brief_content,app.appUrl,app.App_subtitle),
                  Container(height: 20),

                  /* Row(
                    children: <Widget>[
                      Container(
                          child:
                              Icon(Icons.location_on, color: Colors.grey[40]),
                          width: 50),
                      Container(width: 15),
                      Expanded(
                        child: Text(
                          "3265  Hinkle Deegan Lake Road, Dundee New York, United State",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.grey[60],
                                  fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  )*/
                ],
              ),
            ),
          ),
          Container(height: 10),
        ],
      ),
    );
  }

  GestureDetector buildMoreApps_FunRoq(BuildContext context, bool ThemeType_roq,app_title,app_brief_content,app_Url,app_Subtitle) {
    return GestureDetector(
      child:
      Row(
        children: <Widget>[
          Container(
              child: Icon(Icons.info, color: Colors.grey[40]),
              width: 50),
          Container(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(app_title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(
                      color: Colors.grey[60],
                      fontWeight: FontWeight.w500)),
              Container(height: 2),
              /* Text("$app_Subtitle",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.grey.shade500,fontWeight: FontWeight.bold))*/
            ],
          ),
          //Container(width: 45),
          Expanded(
            child: Container(
              //color: Colors.yellow,
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Icon(Icons.install_mobile),
                  onPressed: () {url_launcher.launch(app_Url);}

              ),
              //width: 5,
            ),
          ),
          /*Expanded(
                        child: Container(
                          color: Colors.yellow,
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              icon: Icon(Icons.download),
                              onPressed: () {}

                          ),
                          //width: 5,
                        ),
                      ),*/
          SizedBox(width:10),
        ],
      ),
      onTap:()=>showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Center(
              child: Text(
                "$app_title",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //fontFamily: Utils.ubuntuRegularFont),
                ),
              )),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "$app_brief_content",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: Utils.ubuntuRegularFont,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Divider(),
              TextButton(
                onPressed: () => {
                  // Utils.launchURL(item.url),
                  Navigator.pop(context)
                },
                //splashColor: Colors.transparent,
                //highlightColor: Colors.transparent,
                // makes highlight invisible too
                child: Text('(OUR PROTFOLIO)',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: Utils.crimsonRegularFont,
                        color: Colors.redAccent)),
              ),
              RawMaterialButton(

                  onPressed: () =>
                      url_launcher.launch(app_Url),
                  elevation: 2.0,
                  //fillColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    //clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                        ThemeType_roq
                            ? "assets/images/googleplay3.png"
                            : "assets/images/googleplay3.png",
                        height:40,
                        width:190,fit: BoxFit.fill
                    ),
                  ),

                  //padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                          color: Colors.grey.shade400))),
            ],
          ),
        ),
      ) ,
    );
  }
}

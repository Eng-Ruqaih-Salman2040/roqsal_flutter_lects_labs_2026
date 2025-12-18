import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URL_Launcher_Roq_Ex_final extends StatelessWidget {
  final String title = 'Url Launcher';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Utl_Launcher_Roq_Ex3(title: title),
      );
}

class Utl_Launcher_Roq_Ex3 extends StatefulWidget {
  final String title;

  const Utl_Launcher_Roq_Ex3({
    required this.title,
  });

  @override
  _URL_Launcher_Roq_Ex_finalState createState() =>
      _URL_Launcher_Roq_Ex_finalState();
}

class _URL_Launcher_Roq_Ex_finalState extends State<Utl_Launcher_Roq_Ex3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(
              text: 'Open Link in app',
              onClicked: () => Utils_Roq.openLink(url: 'http://flutter.dev'),
            ),
            buildButton(
              text: 'Open link in app(JavaScript ON',
              onClicked: () => Utils_Roq.openLink(url: 'http://flutter.dev'),
            ),
            buildButton(
              text: 'Open Link in app(DOM storage ON)',
              onClicked: () => Utils_Roq.openLink(url: 'http://flutter.dev'),
            ),
            buildButton(
              text: 'Open Link in app  and close after 5 seconds.....',
              onClicked: () => Utils_Roq.openLink(url: 'http://flutter.dev'),
            ),


            buildButton(
              text: 'Open Email',
              onClicked: () => Utils_Roq.openEmail(
                toEmail: 'example@gmail.com',
                subject: 'Hello World',
                body: 'This works great!',
              ),
            ),
            buildButton(
              text: 'Open Call',
              onClicked: () =>
                  Utils_Roq.openPhoneCall(phoneNumber: '+4912388128311'),
            ),
            buildButton(
              text: 'Open SMS',
              onClicked: () => Utils_Roq.openSMS(phoneNumber: '+4912388128311'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
  }) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: ElevatedButton(
          style:ElevatedButton.styleFrom( shape: StadiumBorder(),backgroundColor:   Colors.deepOrange,),

          onPressed: onClicked,


          child: Text(
            text,
            style: TextStyle(fontSize: 16,color: Colors.white,),
          ),
        ),
      );
}

/////////////////////////////////////////class
class Utils_Roq {
  static Future openLink({
    required String url,
  }) =>
      _launchUrl(url);

  static Future openEmail({
    required String toEmail,
    required String subject,
    required String body,
  }) async {
    final url =
        'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(body)}';

    await _launchUrl(url);
  }

  static Future openPhoneCall({required String phoneNumber}) async {
    final url = 'tel:$phoneNumber';

    await _launchUrl(url);
  }

  static Future openSMS({required String phoneNumber}) async {
    final url = 'sms:$phoneNumber';

    await _launchUrl(url);
  }

  static Future _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(Utl_Launcher_Roq_Ex3());

class Utl_Launcher_Roq_Ex3 extends StatelessWidget {
  final String title = 'Url Launcher';

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(
            text: 'Open Link',
            onClicked: () => Utils.openLink(url: 'http://flutter.dev'),
          ),
          buildButton(
            text: 'Open Email',
            onClicked: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'Hello World',
              body: 'This works great!',
            ),
          ),
          buildButton(
            text: 'Open Call',
            onClicked: () =>
                Utils.openPhoneCall(phoneNumber: '+4912388128311'),
          ),
          buildButton(
            text: 'Open SMS',
            onClicked: () => Utils.openSMS(phoneNumber: '+4912388128311'),
          ),
        ],
      ),
    ),
  );

  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
  }) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: ElevatedButton(
          style:ElevatedButton.styleFrom( shape: StadiumBorder(),),

          onPressed: onClicked,

          child: Text(
            text,
            style: TextStyle(fontSize: 24,color: Colors.white,),
          ),
        ),
      );
}

/////////////////////////////////////////class
class Utils {
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
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url_Lunchar_Roq_Ex1 extends StatefulWidget {
  const Url_Lunchar_Roq_Ex1({Key? key}) : super(key: key);

  @override
  _Url_Lunchar_Roq_Ex1State createState() => _Url_Lunchar_Roq_Ex1State();
}

class _Url_Lunchar_Roq_Ex1State extends State<Url_Lunchar_Roq_Ex1> {
  String str_roq = "Get The App";
  var url_gp_roq = "https://play.google.com/store/apps";


  ////////////////////////////////////////////
  final String lat_roq = "37.3230";
  final String lng_roq = "-122.0312";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Url Launcher Roq App"),
        ),
        body: Center(
            child: Container(
              padding: EdgeInsets.all(30),
              child: ListView(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      child: const Text('Launching Web Page in Roq Browser'),
                      onPressed: () async {
                        try {
                          await canLaunch(url_gp_roq)
                              ? await launch(url_gp_roq)
                              : throw 'Could not launch';
                        } catch (e) {
                          setState(() {
                            str_roq = e.toString();
                          });
                        }
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                      child: const Text('Launching Web Page in Roq App'),
                      onPressed: () async {
                        try {
                          await canLaunch(url_gp_roq)
                              ? await launch(url_gp_roq,
                              forceWebView: true, enableJavaScript: true)
                              : throw 'Could not launch';
                        } catch (e) {
                          setState(() {
                            str_roq = e.toString();
                          });
                        }
                      }),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                      child: const Text('Launching Google Maps and Apple Maps'),
                      onPressed: () async {
                        final String googleMapsUrl = "comgooglemaps://?center=$lat_roq,$lng_roq";
                        final String appleMapsUrl = "https://maps.apple.com/?q=$lat_roq,$lng_roq";

                        if (await canLaunch(googleMapsUrl)) {
                          await launch(googleMapsUrl);
                        }
                        if (await canLaunch(appleMapsUrl)) {
                          await launch(appleMapsUrl, forceSafariVC: false);
                        } else {
                          throw "Couldn't launch Map";
                        }
                      }
                  ),
                  ElevatedButton(
                    child: Text(
                      'Launching Whatsapp',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: abrirWhatsApp,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Launching Flutter dev',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: abrirUrl,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                  ),
                  ElevatedButton(
                    child: Text(
                      'L Gmail',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: abrirGmail,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Launching Google Maps',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: abrirGoogleMaps,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Launching Facebook Messenger',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: abrirMessenger,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Launching Contacts',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: abrirContatos,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Fazer Ligação',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: fazerLigacao,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Launching SMS',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: enviarSms,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                  )
                ],
              ),
            )));
  }
}
abrirGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'ianwandersong12@gmail.com',
    query: 'subject=Reportar&body=Detalhe aqui qual bug você encontrou: ',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}

abrirUrl() async {
  const url = 'https://flutterando.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

abrirWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=5586994324465&text=Olá,tudo bem ?";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

//method to launch maps
abrirGoogleMaps() async {
  const urlMap =
      "https://www.google.com/maps/search/?api=1&query=-22.9732303,-43.2032649";
  if (await canLaunch(urlMap)) {
    await launch(urlMap);
  } else {
    throw 'Could not launch Maps';
  }
}

abrirMessenger() async {
  var messengerUrl = 'http://m.me/ianwandersom';
  if (await canLaunch(messengerUrl)) {
    await launch(messengerUrl);
  } else {
    throw 'Could not launch $messengerUrl';
  }
}

abrirContatos() async {
  const url = 'content://com.android.contacts/contacts';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

fazerLigacao() async {
  const url = "tel:86994324465";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

enviarSms() async {
  const url = "sms:86994324465?body=Olá, tudo bem?";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
/*async {
              String telephoneUrl = "tel:$telephoneNumber";

              if (await canLaunch(telephoneUrl)) {
                await launch(telephoneUrl);
              } else {
                throw "Can't phone that number.";
              }
            },*/
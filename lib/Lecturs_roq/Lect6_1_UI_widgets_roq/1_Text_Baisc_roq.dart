import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(home: Text_Baisc_Roq()));

class Text_Baisc_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text widget Roq App"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hey Ferase Salman!',
              ),
              SizedBox(
                height: 20,
              ),
              Text('Hey Ruqaih Salman!',
                  style: TextStyle(
                    fontSize: 30,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hey Joan Salman!',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hey Jory Salman!',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Futura',
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 20,

              ),
              Center(
                child: new InkWell(
                    child: new Text('Hyperlink Text : Open Browser'),
                    onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
                ),
              ),
            ],
          ),
        ));
  }

 const Text_Baisc_Roq();


}



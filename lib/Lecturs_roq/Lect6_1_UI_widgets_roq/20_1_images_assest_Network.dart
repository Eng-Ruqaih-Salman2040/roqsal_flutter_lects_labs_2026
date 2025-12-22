import 'package:flutter/material.dart';

void main() => runApp(Image_widget_Roq());

class Image_widget_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Roq App'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'A tablet is a wireless touch screen computer that is smaller than a notebook but larger than a smartphone.',
                style: TextStyle(fontSize: 20.0),
              ) ,
              Image.asset('assets_roq/assets_lect_roq/images_roq/logo.jpg'),

              Text('It is an image displays from the given url by  Ruqaih Salman .',
                style: TextStyle(fontSize: 20.0),
              ),
              Image.network(
                  'https://wallpapercave.com/wp/wp5395979.jpg',
                  height: 400,
                  width: 250
              ),
              FadeInImage.assetNetwork(
                  placeholder: 'assets/food.png',
                  image: 'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',
                  height: 400,
                  width: 250
              ),
              Text(
                'It is an image displays from the given url.',
                style: TextStyle(fontSize: 20.0),
              )



            ],
          ),
        ),
      ),
    );
  }
}

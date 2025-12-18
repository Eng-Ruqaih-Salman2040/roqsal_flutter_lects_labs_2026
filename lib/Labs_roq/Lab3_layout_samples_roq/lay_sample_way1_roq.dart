import 'package:flutter/material.dart';

class LayoutSample_W1_Roq extends StatelessWidget {
  const LayoutSample_W1_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample layout Roq W1"),
          backgroundColor: Colors.black54,
        ),
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          margin: EdgeInsets.symmetric
            (horizontal: 15, vertical: 10),
          //color: Colors.white,
          elevation: 2,
          clipBehavior:
          Clip.antiAliasWithSaveLayer,

          child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric
                (horizontal: 10, vertical: 20),
              child: Column(
                  children: <Widget>[
              Row(
              children: <Widget>[
                  Container(width: 6),
              Text("From Our Apps",
                  style:
                  Theme.of(context).textTheme.titleMedium?.copyWith( color: Colors.grey[80],
                  fontWeight: FontWeight.w500)
              )
          ],
        ),
        Container(height: 20),
        ListTile(
            leading: Icon(Icons.info,
                color: Colors.grey[40]),
            title: Text("Dart Guide", style: Theme
                .of(context)
                .textTheme
                .titleMedium
                ?.copyWith(
                color: Colors.grey[60],
                fontWeight: FontWeight.w500)),
            subtitle:
            Text("Comprehensive guide to learning Dart",
                style: Theme
                    .of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold)),
            trailing: IconButton(
                icon: Icon(Icons.install_mobile), onPressed: () {})),
        Container(height: 20),
        ListTile(
        leading: Icon(Icons.info, color: Colors.grey[40]),
    title: Text("Awesome Flutter Guide",
    style: Theme
        .of(context)
        .textTheme
        .titleMedium
        ?.copyWith(
    color: Colors.grey[60], fontWeight: FontWeight.w500)),
    subtitle:
    Text(
    "Flutter Widgets, Plugins, Animation, UI and Projects",
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Colors.grey.shade500,
            fontWeight: FontWeight.bold)),
          trailing: IconButton(
              icon: Icon(Icons.install_mobile), onPressed: () {}),),
                    Container(height: 20),
                    ListTile(
                      leading: Icon(Icons.info,
                          color: Colors.grey[40]),
                      title: Text("More Apps",
                          style: Theme
                              .of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                              color: Colors.grey[60],
                              fontWeight: FontWeight.w500)),
                      subtitle:
                      Text("All of Our Flutter Apps  in Google Play",
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold)),
                      trailing: IconButton(
                          icon: Icon(Icons.install_mobile), onPressed: () {}),),
                    Container(height: 20),
                  ],
              ),)
          ,
        )
    );
  }
}



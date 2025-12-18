import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(ListView_Dialog_Roq());
}

class ListView_Dialog_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const DialogCustomLight_Roq(),
    );
  }
}
class DialogCustomLight_Roq extends StatefulWidget {

  const DialogCustomLight_Roq({Key? key}) : super(key: key);

  @override
  DialogCustomLight_RoqState createState() => new DialogCustomLight_RoqState();
}

class DialogCustomLight_RoqState extends State<DialogCustomLight_Roq> {

  late BuildContext context;
  late List<People> items;
  void onItemClick(int index, People obj) {
    //showDialog(context: context, child: CustomEventDialog(obj));

    showDialog(context: context,builder: (_) =>CustomEventDialog(obj));
  }

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());

    Future.delayed(Duration(seconds: 1), () {
      // showDialog(context: context, child: CustomEventDialog(items[0]));
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("ListView & Dialog Roq", style: TextStyle(color: Color(0xFF666666))),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Color(0xFF666666)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Color(0xFF666666)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Color(0xFF666666)),
              onPressed: () {},
            ),// overflow menu
          ]
      ),
      body: ListBasicAdapter(items, onItemClick).getView(),
    );
  }
}


class CustomEventDialog extends StatefulWidget {

  final People obj;

  CustomEventDialog(this.obj);

  @override
  CustomEventDialogState createState() => new CustomEventDialogState();
}

class CustomEventDialogState extends State<CustomEventDialog>{

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(width: 160,
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: Color(0xFFcccccc),),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Container(height: 20),
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage: AssetImage(widget.obj.image),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width : double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(widget.obj.name, textAlign : TextAlign.center, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Color(0xFF37474F))),
                    Container(height: 5),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", textAlign : TextAlign.center, style:Theme.of(context).textTheme.titleMedium?.copyWith(color: Color(0xFF999999))),
                    Container(height: 20),
                    TextButton(
                      style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)
                      ),
                        backgroundColor: Colors.red[300],
                      ),
                      child: Text("FOLLOW", style: TextStyle(color: Colors.white),),

                      onPressed: (){
                        Toast_roq.show_funroq("FOLLOW clicked", Toast.LENGTH_LONG);
                      },
                    ),
                    Container(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text("35.7K", style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Color(0xFF37474F), fontWeight: FontWeight.bold
                              )),
                              Container(height: 5),
                              Text("Following", style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[500]))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text("215", style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Color(0xFF37474F), fontWeight: FontWeight.bold
                              )),
                              Container(height: 5),
                              Text("Followers", style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[500]))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class People {

 late String image;
late  String name;
 late String email;
  late bool section = false;


  People();

  People.section(this.name, this.section);

}
class Dummy
{
  static const List<String> peopleNames = [
    "Anderson Thomas", "Adams Green", "Laura Michelle", "Betty L", "Miller Wilson",
    "Roberts Turner", "Garcia Lewis", "Mary Jackson", "Kevin John", "Evans Collins",
    "Sarah Scott", "Elizabeth", "Roberts", "Anthony C", "Susan Lee"
  ];

  static const List<String> peopleImages = [
    "photo_male_1.jpg", "photo_male_2.jpg", "photo_female_1.jpg", "photo_female_2.jpg", "photo_male_3.jpg",
    "photo_male_4.jpg", "photo_female_3.jpg", "photo_female_4.jpg", "photo_male_5.jpg", "photo_male_6.jpg",
    "photo_female_5.jpg", "photo_female_6.jpg", "photo_male_7.jpg", "photo_male_8.jpg", "photo_female_7.jpg"
  ];
  static String getEmailFromName(String name) {
    if (name.isNotEmpty) {
      String email = name.replaceAll(" ", ".").toLowerCase() + "@mail.com";
      return email;
    }
    return name;
  }

  static List<People> getPeopleData() {
    List<People> items = [];

    for (int i = 0; i < peopleNames.length; i++) {
      People obj = new People();
      obj.image = Img.get(peopleImages[i]);
      obj.name = peopleNames[i];
      obj.email = getEmailFromName(obj.name);
      items.add(obj);
    }
    items.shuffle();
    return items;
  }
}


class Img {
  static String get(String name){
    return 'assets/images/'+name;
  }
}


class Toast_roq{
  static void show_funroq(String msg_roq, Toast duration_roq) {
    Fluttertoast.showToast(
      msg: msg_roq,
      toastLength: duration_roq,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.purple,
      textColor: Colors.white,
    );
  }
}


class ListBasicAdapter {
  List items = <People>[];
  List itemsTile = <ItemTile>[];

  ListBasicAdapter(this.items, onItemClick) {
    for (var i = 0; i < items.length; i++) {
      itemsTile.add(ItemTile(index: i, object: items[i], onClick: onItemClick));
    }
  }

  Widget getView() {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => itemsTile[index],
        itemCount: itemsTile.length,
        padding: EdgeInsets.symmetric(vertical: 10),
      ),
    );
  }
}

// ignore: must_be_immutable
class ItemTile extends StatelessWidget {
  final People object;
  final int index;
  final Function onClick;

  const ItemTile({
    Key? key,
    required this.index,
    required this.object,
    required this.onClick,
  })  : assert(index != null),
        assert(object != null),
        assert(onClick != null),
        super(key: key);

  void onItemClick(People obj) {
    onClick(index, obj);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onItemClick(object);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(width: 20),
            Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage(object.image),
                ),
                width: 50,
                height: 50
            ),
            Container(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    object.name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  Container(height: 5),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey.shade600
                    ),
                  ),
                  Container(height: 15),
                  Divider(color: Colors.grey[300], height: 0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

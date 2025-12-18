import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../myApp_Data_Settings_roq/constants.dart';
//show  DartMain_rout_Roq, Dummy, Img, MyColors, MyText, Wizard;

class IntroScreen_Roq extends StatefulWidget {
  const IntroScreen_Roq({Key? key}) : super(key: key);

  @override
  IntroScreen_RoqState createState() => new IntroScreen_RoqState();
}

class IntroScreen_RoqState extends State<IntroScreen_Roq> {
  List<IntroScr_Wizard> wizardData = Dummy_IntroScr.IntroScr_getWizard();
  PageController pageController = PageController(
    initialPage: 0,
  );
  int page = 0;
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //=>backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(color: Colors.grey[100])),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                PageView(
                  onPageChanged: onPageViewChange,
                  controller: pageController,
                  children: buildPageViewItem(),
                ),
                /* Row(
                  children: <Widget>[
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.close, color: MyColors.grey_40),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )*/
                Row(
                  children: <Widget>[
                    Spacer(),
                    ButtonTheme(
                      minWidth: 10,
                      child: TextButton(
                        child: Text("SKIP",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: MyColors.grey_60,
                                    fontWeight: FontWeight.w500)),
                        /* MyText.subhead(context)?.copyWith(
                            color: MyColors.grey_40, fontWeight: FontWeight.w500*/

                        // color: Colors.transparent,
                        onPressed: () {
                          // Navigator.pop(context);
                          Navigator.of(context)
                              .pushReplacementNamed(flutterMain_rout_Roq);
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 60,
              child: Align(
                alignment: Alignment.topCenter,
                child: buildDots(context),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: TextButton(
              child: Text(isLast ? "GOT IT" : "NEXT",
                  style: MyText.subhead(context)?.copyWith(
                      color: MyColors.grey_40,
                      fontWeight: FontWeight.bold)),
              //color: MyColors.grey_10,
              onPressed: () {
                if (isLast) {
                  //Navigator.pop(context);
                  Navigator.of(context)
                      .pushReplacementNamed(flutterMain_rout_Roq);
                  return;
                }
                pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut);
              },
            ),
          )
        ]),
      ),
    );
  }

  void onPageViewChange(int _page) {
    page = _page;
    isLast = _page == wizardData.length - 1;
    setState(() {});
  }

  List<Widget> buildPageViewItem() {
    List<Widget> widgets = [];
    for (IntroScr_Wizard wz in wizardData) {
      Widget wg = Container(
        padding: EdgeInsets.all(35),
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          children: <Widget>[
            Container(
                width: 280,
                child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(35),
                          child: Image.asset(Img.get(wz.image),
                              width: 150, height: 150),
                        ),
                        Text(
                          wz.title,
                          style: TextStyle(
                            fontFamily: Constants.POPPINS,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.5,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              wz.brief,
                              style: TextStyle(
                                fontFamily: Constants.OPEN_SANS,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                                fontSize: 14.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        /*Text(wz.title, style: MyText.medium(context)?.copyWith(color: MyColors.grey_80, fontWeight: FontWeight.bold)),
                        Center(
                            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child:Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                          child: Text(wz.brief, textAlign : TextAlign.center, style: MyText.subhead(context)?.copyWith(
                              color: MyColors.grey_60
                          )),))),*/
                      ],
                    )
                  ],
                ))
          ],
        ),
      );
      widgets.add(wg);
    }
    return widgets;
  }

  Widget buildDots(BuildContext context) {
    Widget widget;

    List<Widget> dots = [];
    for (int i = 0; i < wizardData.length; i++) {
      Widget w = Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i
              ? /*Colors.orange[400]*/ Color(0xFFf06292)
              : MyColors.grey_20,
        ),
      );
      dots.add(w);
    }
    widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: dots,
    );
    return widget;
  }
}

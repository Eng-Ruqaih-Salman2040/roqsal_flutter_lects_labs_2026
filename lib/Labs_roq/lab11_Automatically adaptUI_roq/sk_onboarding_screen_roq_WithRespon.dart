/*convert all the next UI flutter code to make Flutter apps responsive with use  MediaQuery
Automatically adapt UI to different screen sizes.*/

library sk_onboarding_screen;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'sk_onboarding_model_roq.dart';
//import 'package:sk_onboarding_screen/sk_onboarding_model.dart';

class SKOnboardingScreen_Roq2 extends StatefulWidget {
  final List<SkOnboardingModel_Roq> pages;
  final Color bgColor;
  final Color themeColor;
  final ValueChanged<String> skipClicked;
  final ValueChanged<String> getStartedClicked;

  SKOnboardingScreen_Roq2({
    Key? key,
    required this.pages,
    required this.bgColor,
    required this.themeColor,
    required this.skipClicked,
    required this.getStartedClicked,
  }) : super(key: key);

  @override
  SKOnboardingScreen_Roq2State createState() => SKOnboardingScreen_Roq2State();
}

class SKOnboardingScreen_Roq2State extends State<SKOnboardingScreen_Roq2> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < widget.pages.length; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  List<Widget> buildOnboardingPages() {
    final children = <Widget>[];

    for (int i = 0; i < widget.pages.length; i++) {
      children.add(_showPageData(widget.pages[i]));
    }
    return children;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
/* Convert the next Flutter Code  to make UI Flutter apps responsive with mediaquery
  Automatically adapt UI to different screen sizes.*/

/*  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? widget.themeColor : Color(0xFF929794),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }*/
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
      height: MediaQuery.of(context).size.height * 0.01,
      width: isActive ? MediaQuery.of(context).size.width * 0.08 : MediaQuery.of(context).size.width * 0.05,
      decoration: BoxDecoration(
        color: isActive ? widget.themeColor : Color(0xFF929794),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.02,
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        widget.skipClicked("Skip Tapped");
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: PageView(
                          physics: ClampingScrollPhysics(),
                          controller: _pageController,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          children: buildOnboardingPages()),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  _currentPage != widget.pages.length - 1
                      ? Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      right: MediaQuery.of(context).size.width * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.02,
                    ),
                    child: FloatingActionButton(
                      backgroundColor: widget.bgColor,
                      child: Icon(
                        Icons.arrow_forward,
                        color: widget.themeColor,
                        size: MediaQuery.of(context).size.width * 0.08,
                      ),
                      onPressed: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                    ),
                  )
                      : SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == widget.pages.length - 1
          ? _showGetStartedButton()
          : SizedBox(),
    );
  }

  Widget _showPageData(SkOnboardingModel_Roq page) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            page.imagePath,
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.7,
            fit: BoxFit.contain,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            page.title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            page.description,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              color: Color(0xFF929794),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showGetStartedButton() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
      child: ElevatedButton(
        onPressed: () {
          widget.getStartedClicked("Get Started Tapped");
        },
        child: Text(
          'Get Started',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.themeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  void _getStartedTapped() {
    widget.getStartedClicked("Get Started Tapped");
  }
}

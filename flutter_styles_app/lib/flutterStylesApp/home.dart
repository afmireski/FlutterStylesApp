import 'package:flutter/material.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/firstFormScreen.dart';
import 'package:flutter_styles_app/flutterStylesApp/home/homeScreen.dart';
import 'package:flutter_styles_app/flutterStylesApp/navigationDrawer/customDrawer.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/settingsScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController _pageController;


  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          ///HOME
          Scaffold(
            appBar: AppBar(
              title: Text('Home'),
              centerTitle: true,
            ),
            drawer: CustomDrawer(pageController: _pageController,),
            body: HomeScreen(),
          ),
          ///FORM
          Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: AppBar(
              title: Text('Form'),
              centerTitle: true,
            ),
            drawer: CustomDrawer(pageController: _pageController,),
            body: FirstFormScreen(),
          ),
          ///FORM
          Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: AppBar(
              title: Text('Settings'),
              centerTitle: true,
            ),
            drawer: CustomDrawer(pageController: _pageController,),
            body: SettingsScreen(),
          ),

        ],
      ),
    );
  }

  Future<bool> _requestPop() {
    if (true) {
      _pageController.jumpToPage(0);
      return Future.value(false);
    }
  }

}

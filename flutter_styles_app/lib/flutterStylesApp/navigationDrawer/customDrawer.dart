import 'package:flutter/material.dart';
import 'package:flutter_styles_app/flutterStylesApp/navigationDrawer/drawerTile.dart';

class CustomDrawer extends StatefulWidget {

  final PageController pageController;

  const CustomDrawer({Key key, this.pageController}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color( 0xfffeb09a ),
              Color( 0xfffd6135 ),
            ]
          )
        ),
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(10.0),
                child: FlutterLogo(
                  size: 100.0,
                ),
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  DrawerTile(
                    icon: Icons.home,
                    controller: widget.pageController,
                    label: 'Home',
                    page: 0
                  ),
                  DrawerTile(
                    icon: Icons.assignment,
                    controller: widget.pageController,
                    label: 'Form',
                    page: 1
                  ),
                  DrawerTile(
                      icon: Icons.settings,
                      controller: widget.pageController,
                      label: 'Form',
                      page: 2
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

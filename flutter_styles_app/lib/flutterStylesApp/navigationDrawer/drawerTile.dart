import 'dart:ui';

import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final PageController controller;
  final int page;
  final IconData icon;
  final String label;

  const DrawerTile({Key key, this.controller, this.page, this.icon, this.label}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pop();
        controller.jumpToPage(page);
      },
      leading: Icon(
        icon,
        size: 30.0,
        color: controller.page.round() == page ? Theme.of(context).primaryColorDark : Colors.black45,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: controller.page.round() == page ? Theme.of(context).primaryColorDark : Colors.black45

        ),
      ),
    );
  }
}

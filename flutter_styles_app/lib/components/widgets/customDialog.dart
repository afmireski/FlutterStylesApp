import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {

  final Icon icon;
  final String title;
  final TextStyle titleStyle;
  final String buttonLabel;
  final TextStyle labelStyle;
  final Function onPressed;
  final Widget child;
  final ShapeBorder border;
  final List<BoxShadow> shadows;
  final bool canPop;

  CustomDialog({Key key,
    @required this.icon,
    @required this.title,
    this.titleStyle,
    this.buttonLabel = "Entendi",
    this.labelStyle,
    @required this.onPressed,
    this.child, this.border,
    this.shadows,
    this.canPop = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onPop,
      child: Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(8.0),
              decoration: ShapeDecoration(
                  shape: border ?? BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Colors.white,
                  shadows: shadows
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Center(
                      child: icon,
                    ),
                  ),
                  Container(
                    child: Text(
                      title,
                      style: titleStyle ?? TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  child != null ? Divider(indent: 10.0, endIndent: 10.0, height: 10.0,): Container(),
                  child ?? Container(),
                  SizedBox(height: 20.0,),
                  FlatButton(
                    onPressed: onPressed,
                    child: Text(buttonLabel, style: labelStyle,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> onPop() {
    return Future.value(canPop);
  }
}

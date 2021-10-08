import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';

class InfoCardWeb extends StatelessWidget {

  final IconData icon;
  final Widget child;
  final Color cardColor;
  final Color backgroundIconColor;
  final Color iconColor;
  final List<BoxShadow> cardShadows;
  final List<BoxShadow> iconShadows;
  final double iconBoxSize;
  final String title;
  final TextStyle textStyle;
  final ShapeBorder cardBorder;
  final ShapeBorder iconBoxBorder;


  const InfoCardWeb({Key key,
    @required this.icon,
    @required this.child,
    this.cardColor = Colors.white,
    this.backgroundIconColor = Colors.black,
    this.iconColor = Colors.white,
    this.cardShadows, this.iconShadows,
    this.iconBoxSize = 50,
    this.title = "", this.textStyle,
    this.cardBorder, this.iconBoxBorder,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    MediaQueryConfig mediaConfig = MediaQueryConfig(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: ShapeDecoration(
          shape: cardBorder ?? RoundedRectangleBorder(),
          color: cardColor,
          shadows: cardShadows
      ),
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
      child: Column(
        children: [
          ///HEADER
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //ICON
                Container(
                  height: iconBoxSize,
                  width: iconBoxSize,
                  decoration: ShapeDecoration(
                    color: backgroundIconColor,
                    shape: iconBoxBorder ?? RoundedRectangleBorder(),
                    shadows: iconShadows,

                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Icon(icon, color: iconColor, size: iconBoxSize - 20.0,),
                  ),
                ),
                //TITLE
                Container(
                  child: Text(
                    title,
                    textAlign: TextAlign.right,
                    style: textStyle ?? TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold,),
                  ),
                ),
              ],
            ),
          ),
          //Child
          child,
        ],
      ),
    );
  }

}

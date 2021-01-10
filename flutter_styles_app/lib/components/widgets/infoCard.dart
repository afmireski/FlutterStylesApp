import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';

class InfoCard extends StatelessWidget {

  final double height;
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


  const InfoCard({Key key,
    @required this.height,
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
      height: height,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [
          ///Child
          Positioned(
            child: Container(
              decoration: ShapeDecoration(
                  shape: cardBorder ?? RoundedRectangleBorder(),
                  color: cardColor,
                  shadows: cardShadows
              ),
              height: height - (iconBoxSize * 0.5),
              padding: EdgeInsets.fromLTRB(10.0, iconBoxSize - 5.0, 10.0, 10.0),
              child: child,
            ),
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
          ),

          ///Title
          Positioned(
            right: 10.0,
            top: (iconBoxSize * 0.5) + 5.0,
            child: Container(
              height: iconBoxSize - 15.0,
              width: mediaConfig.returnWidth(percent: 0.75),
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: textStyle ?? TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold,),
              ),
            ),
          ),

          ///Icon
          Positioned(
            left: 10.0,
            child: Container(
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
          )
        ],
      ),
    );
  }

}

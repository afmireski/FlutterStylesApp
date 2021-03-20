import 'package:flutter/material.dart';

class LogClipper extends CustomClipper<Path> {

  final BoxConstraints constraints;
  final double maxHeight;

  LogClipper({@required this.constraints, @required this.maxHeight});

  @override
  Path getClip(Size size) {
    Path path = new Path();

    if (constraints.maxHeight <= 800 || size.height <= 425) {
      ///TOP
      path.moveTo(size.width * 0.9, 0);
      path.cubicTo(
          size.width * 0.6, size.height * 0.35, ///Control Point 1
          size.width * 0.05, 0, ///Control Point 2
          0, size.height * 0.2 ///End Point
      );

      path.lineTo(0, size.height * 0.2);

      ///LEFT
      path.lineTo(0, size.height * 0.9);

      ///BOTTOM
      path.arcToPoint(Offset(size.width * 0.1, size.height), radius: Radius.circular(size.height * 0.1), clockwise: false);
      path.cubicTo(
          size.width * 0.2, size.height * 0.85,
          size.width * 0.4, size.height,
          size.width * 0.8, size.height * 0.95);
      path.lineTo(size.width * 0.8, size.height * 0.95);
      path.arcToPoint(Offset(size.width, size.height * 0.8), radius: Radius.circular(size.height * 0.2), clockwise: false);

      ///RIGHT
      path.lineTo(size.width, size.height * 0.2);
      path.arcToPoint(Offset(size.width * 0.9, 0), radius: Radius.circular(size.height * 0.2), clockwise: false);
    } else {
      ///TOP
      path.moveTo(size.width * 0.9, 0);
      path.cubicTo(
          size.width * 0.6, maxHeight * 0.35, ///Control Point 1
          size.width * 0.05, 0, ///Control Point 2
          0, maxHeight * 0.2 ///End Point
      );

      path.lineTo(0, maxHeight * 0.2);

      ///LEFT
      path.lineTo(0, maxHeight * 0.8);

      ///BOTTOM
      path.arcToPoint(Offset(size.width * 0.1, maxHeight), radius: Radius.circular(maxHeight * 0.1), clockwise: false);
      path.cubicTo(
          size.width * 0.2, maxHeight * 0.85,
          size.width * 0.4, maxHeight,
          size.width * 0.8, maxHeight * 0.95);
      path.lineTo(size.width * 0.8, maxHeight * 0.95);
      path.arcToPoint(Offset(size.width, maxHeight * 0.8), radius: Radius.circular(maxHeight * 0.3), clockwise: false);

      ///RIGHT
      path.lineTo(size.width, maxHeight* 0.2);
      path.arcToPoint(Offset(size.width * 0.9, 0), radius: Radius.circular(maxHeight * 0.2), clockwise: false);
    }
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}
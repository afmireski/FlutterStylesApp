import 'package:flutter/material.dart';

class FlagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.moveTo(0, size.height * 0.2);
    path.lineTo(0, size.height);
    path.cubicTo(size.width * 0.2, size.height * 0.7,
        size.width * 0.8, size.height,
        size.width, size.height * 0.6);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.cubicTo(size.width * 0.8, size.height * 0.35,size.width * 0.2, 0, 0, size.height * 0.2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}
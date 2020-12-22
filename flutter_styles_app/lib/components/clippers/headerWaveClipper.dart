import 'package:flutter/material.dart';
class HeaderWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * .7);
    path.quadraticBezierTo(size.width / 3, size.height, size.width / 1.5, size.height * .6);
    path.quadraticBezierTo(size.width / 1, size.height * .25, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}
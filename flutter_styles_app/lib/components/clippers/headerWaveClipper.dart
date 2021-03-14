import 'package:flutter/material.dart';
class HeaderWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.2, size.height, //Ponto de Controle
        size.width * 0.6, size.height * 0.7 //Ponto Final
    );
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.5,
        size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

}
import 'package:flutter/material.dart';

class WaveHeader extends StatelessWidget {

  final Widget child;
  final double height;
  final Color mainColor;
  final Color secondaryColor;

  const WaveHeader({Key key, this.child, @required this.height,
    @required this.mainColor, @required this.secondaryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HeaderWaveClipper(),
      child: Container(
        width: double.infinity,
        height: height,
        color: secondaryColor,
        child: Stack(
          children: [
            ClipPath(
              clipper: HeaderWaveClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                height: height * 0.8823,
                width: double.infinity,
                color: mainColor,
                child: child
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

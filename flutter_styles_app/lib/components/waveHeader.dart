import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/clippers/headerWaveClipper.dart';

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
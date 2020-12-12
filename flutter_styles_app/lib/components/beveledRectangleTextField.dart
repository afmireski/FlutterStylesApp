import 'package:flutter/material.dart';

class BeveledRectangleTextField extends StatelessWidget {

  final String label;
  final Color fieldColor;
  final Color borderColor;
  final List<BoxShadow> shadows;

  const BeveledRectangleTextField({Key key,
    this.label,
    this.fieldColor = Colors.white,
    this.borderColor = Colors.black,
    this.shadows}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: BeveledRectangleBorder(
            side: BorderSide(
                style: BorderStyle.solid,
                color: borderColor,
                width: 1.0
            ),
            borderRadius: BorderRadius.circular(10.0),
        ),
        shadows: shadows ?? [
          BoxShadow(
            color: Colors.black,
            offset: Offset(4.0, 2.0),
            blurRadius: 2.0
          )],
        color: fieldColor
      ),
      padding: EdgeInsets.all(5.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          border: InputBorder.none,
          )
        ),
    );
  }
}

class CustomOutlineBorder extends OutlineInputBorder {



}


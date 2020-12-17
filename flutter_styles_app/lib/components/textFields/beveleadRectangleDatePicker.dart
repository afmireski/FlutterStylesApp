import 'package:flutter/material.dart';

class BeveledRectangleDatePicker extends StatelessWidget {

  final String label;
  final TextStyle fieldStyle;
  final String errotText;
  final TextStyle errorStyle;
  final Color fieldColor;
  final Color borderColor;
  final List<BoxShadow> shadows;
  final Function onShowPicker;
  final controller;
  final FocusNode focus;

  const BeveledRectangleDatePicker({Key key,
    @required this.label, this.fieldStyle,
    this.errotText, this.errorStyle,
    this.fieldColor = Colors.white,
    this.borderColor = Colors.black,
    this.shadows,
    @required this.onShowPicker, this.controller, this.focus}) : super(key: key);

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
      child: GestureDetector(
        onTap: onShowPicker,
        child: TextField(
          controller: controller,
          focusNode: focus,
          style: fieldStyle,
          enabled: false,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.date_range_sharp,
                color: borderColor,
              ),
              hintStyle: fieldStyle,
              hintText: label,
              errorText: errotText,
              errorStyle: errorStyle,
              border: InputBorder.none,
            )
        ),
      ),
    );
  }
}
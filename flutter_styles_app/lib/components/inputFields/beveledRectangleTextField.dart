import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BeveledRectangleTextField extends StatelessWidget {

  final String label;
  final String errorText;
  final TextStyle errorStyle;
  final Color fieldColor;
  final Color borderColor;
  final List<BoxShadow> shadows;
  final TextStyle fieldStyle;
  final controller;
  final FocusNode focus;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final Function onSubmitted;
  final Function(String) onChanged;
  final List<TextInputFormatter> masks;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final bool isObscure;

  const BeveledRectangleTextField({Key key,
    @required this.label,
    this.errorText, this.errorStyle,
    this.fieldColor = Colors.white,
    this.borderColor = Colors.black,
    this.shadows,
    this.fieldStyle,
    this.controller,
    this.focus,
    this.keyboardType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    this.onSubmitted,
    this.onChanged, this.masks, this.prefixIcon, this.suffixIcon,
    this.isObscure = false}) : super(key: key);

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
        style: fieldStyle,
        controller: controller,
        focusNode: focus,
        keyboardType: keyboardType,
        textInputAction: inputAction,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        obscureText: isObscure,
        decoration: InputDecoration(
          errorText: errorText,
          errorStyle: errorStyle,
          hintText: label,
          hintStyle: fieldStyle,
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          ),
        inputFormatters: masks,
        ),
    );
  }
}


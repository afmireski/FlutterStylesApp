import 'package:flutter/material.dart';

class BeveleadRectangleDropdown extends StatelessWidget {

  final String label;
  final dynamic value;
  final Icon icon;
  final String errorText;
  final TextStyle errorStyle;
  final Color fieldColor;
  final Color borderColor;
  final List<BoxShadow> shadows;
  final TextStyle fieldStyle;
  final Map items;
  final Function onChanged;

  const BeveleadRectangleDropdown({Key key,
    this.label,

    this.icon,
    this.errorText,
    this.errorStyle,
    this.fieldColor = Colors.white,
    this.borderColor = Colors.black,
    this.shadows,
    this.fieldStyle,
    @required this.items,
    @required this.value,
    @required this.onChanged}) : super(key: key);

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
      child: DropdownButtonFormField(
          items: items.entries.map<DropdownMenuItem<dynamic>>(
                  (MapEntry<dynamic, dynamic> e) => DropdownMenuItem<dynamic>(
                      child: Text(
                          e.value,
                        style: fieldStyle,
                      ),
                    value: e.key,
                  )).toList(),
        style: fieldStyle,
        icon: icon,

        hint: Text(label ?? 'Selecione', style: fieldStyle,),
        value: value,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          errorText: errorText,
          errorStyle: errorStyle
        ),
      ),
    );
  }

}

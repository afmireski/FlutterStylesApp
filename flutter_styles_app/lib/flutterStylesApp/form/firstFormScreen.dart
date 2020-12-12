import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/beveledRectangleTextField.dart';

class FirstFormScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)
              ),
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(5.0, 3.5)
                )
              ],
              color: Colors.grey[200],
            ),
            margin: EdgeInsets.symmetric(vertical: 8.0),
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BeveledRectangleTextField(label: 'Nome',),
                SizedBox(height: 10.0,),
                BeveledRectangleTextField(label: 'Email',),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

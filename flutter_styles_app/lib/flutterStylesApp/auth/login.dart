import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/clippers/logClipper.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 100.0,),
              ClipPath(
                clipper: LogClipper(),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 75.0),
                  color: Colors.white,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BeveledRectangleTextField(label: 'Email'),
                      SizedBox(height: 10.0,),
                      BeveledRectangleTextField(label: 'Senha'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
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
              Container(
                padding: EdgeInsets.all(20.0),
                child: FlutterLogo(
                  size: 150.0,
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 370,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: ClipPath(
                        clipper: LogClipper(),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10.0, 75.0, 10.0, 50),
                          color: Colors.white,
                          height: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BeveledRectangleTextField(
                                label: 'Email',
                                errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                                fieldStyle: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 16,
                                ),
                                borderColor: Theme.of(context).primaryColorDark,
                                shadows: [
                                  BoxShadow(
                                      color: Theme.of(context).primaryColorDark,
                                      offset: Offset(4.0, 2.0),
                                      blurRadius: 2.0)
                                ],
                                inputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                prefixIcon: Icon(Icons.email_outlined, color: Theme.of(context).primaryColorDark, size: 30.0,),
                              ),
                              SizedBox(height: 10.0,),
                              BeveledRectangleTextField(
                                label: 'Senha',
                                errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                                fieldStyle: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 16,
                                ),
                                borderColor: Theme.of(context).primaryColorDark,
                                shadows: [
                                  BoxShadow(
                                      color: Theme.of(context).primaryColorDark,
                                      offset: Offset(4.0, 2.0),
                                      blurRadius: 2.0)
                                ],
                                inputAction: TextInputAction.done,
                                keyboardType: TextInputType.visiblePassword,
                                prefixIcon: Icon(Icons.lock_outline_sharp, color: Theme.of(context).primaryColorDark, size: 30.0,),
                                suffixIcon: Icon(Icons.visibility_outlined, color: Theme.of(context).primaryColorDark, size: 30.0,),
                                isObscure: true,
                              ),
                              SizedBox(height: 20.0,),
                              CheckboxListTile(
                                value: true,
                                onChanged: (value) {

                                },
                                title: Text(
                                  'Lembrar usuário',
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontStyle: FontStyle.italic
                                  ),
                                ),
                                controlAffinity: ListTileControlAffinity.leading,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 0,
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(Icons.person, color: Colors.white,),
                      ),
                    ),
                    Positioned(
                      left: 20,
                        bottom: 0,
                        child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                          onPressed: () {

                          },
                          icon: Icon(Icons.login, color: Colors.white, size: 30,),
                          label: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

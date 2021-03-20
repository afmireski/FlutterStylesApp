import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_styles_app/components/clippers/logClipper.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';
import 'package:flutter_styles_app/flutterStylesApp/auth/controllers/loginController.dart';
import 'package:flutter_styles_app/flutterStylesApp/home.dart';

class Login extends StatelessWidget {

  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    MediaQueryConfig mediaConfig = MediaQueryConfig(context);
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
                  size: mediaConfig.returnHeight(percent: 0.2116),
                ),
              ),
              SizedBox(height: 20.0,),
              _buildLoginForm(mediaConfig),
              SizedBox(height: 30.0,),
              Container(
                child: Center(
                  child: TextButton.icon(
                    onPressed: () {
                    },
                    icon: Icon(Icons.assignment_ind_sharp, color: Theme.of(context).primaryColor, size: 30.0,),
                    label: Text(
                      'Cadastrar-se',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(MediaQueryConfig mediaConfig) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: mediaConfig.returnHeight(percent: 0.5644),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Center(
                  child: ClipPath(
                    clipper: LogClipper(constraints: constraints, maxHeight: 425),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          10.0,
                          75.0,
                          10.0,
                          50
                      ),
                      color: Colors.white,
                      height: mediaConfig.returnHeight(percent: 0.5362),
                      width: constraints.maxWidth <= 600 ? double.infinity : 540,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Observer(
                            builder: (context) {
                              return BeveledRectangleTextField(
                                label: 'Email',
                                onChanged: loginController.loginModel.changeEmail,
                                errorText: loginController.validaEmail(),
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
                              );
                            },
                          ),
                          SizedBox(height: 10.0,),
                          Observer(
                              builder: (context) {
                                return Row(
                                  children: [
                                    Expanded(
                                      child: BeveledRectangleTextField(
                                        label: 'Senha',
                                        onChanged: loginController.loginModel.changePassword,
                                        errorText: loginController.validaPassword(),
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
                                        isObscure: !loginController.showPassword,
                                      ),
                                    ),
                                    SizedBox(width: 10.0,),
                                    Container(
                                      decoration: ShapeDecoration(
                                          shape: BeveledRectangleBorder(
                                            side: BorderSide(
                                                style: BorderStyle.solid,
                                                color: Theme.of(context).primaryColorDark,
                                                width: 1.0
                                            ),
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          shadows: [
                                            BoxShadow(
                                                color: Theme.of(context).primaryColorDark,
                                                offset: Offset(4.0, 2.0),
                                                blurRadius: 2.0)
                                          ],
                                          color: Colors.white
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.all(5.0),
                                        icon: Icon(!loginController.showPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                          color: Theme.of(context).primaryColorDark, size: 30.0,),
                                        onPressed: () => loginController.changeShowPassword(!loginController.showPassword),
                                      ),
                                    )
                                  ],
                                );
                              }
                          ),
                          SizedBox(height: 20.0,),
                          Observer(
                              builder: (context) {
                                return CheckboxListTile(
                                  value: loginController.lembrarUsuario,
                                  onChanged: loginController.changeLembrarUsuario,
                                  title: Text(
                                    'Lembrar usuário',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontStyle: FontStyle.italic
                                    ),
                                  ),
                                  controlAffinity: ListTileControlAffinity.leading,
                                );
                              }
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              ///Avatar
              Positioned(
                right: constraints.maxWidth <= 600 ?
                mediaConfig.returnWidth(percent: 0.0445) :
                constraints.maxWidth <= 1000 ?
                mediaConfig.returnWidth(percent: 0.2) :
                mediaConfig.returnWidth(percent: 0.375),
                top: 0,
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              ///Login Button
              Positioned(
                  left: constraints.maxWidth <= 600 ?
                  mediaConfig.returnWidth(percent: 0.0556) :
                  constraints.maxWidth <= 1000 ?
                  mediaConfig.returnWidth(percent: 0.2) :
                  mediaConfig.returnWidth(percent: 0.35),
                  bottom: constraints.maxWidth <= 600 ? 0 : 110,
                  child: Observer(
                      builder: (context) {
                        return ElevatedButton.icon(
                          onPressed: loginController.isValid ? () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => Home(),));
                          } : null,
                          icon: Icon(Icons.login, color: Colors.white, size: 30,),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)))
                          ),
                          label: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),

                        );
                      }
                  )
              )
            ],
          ),
        );
      },
    );
  }

}

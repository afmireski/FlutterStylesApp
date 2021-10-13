import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_styles_app/components/clippers/flagClipper.dart';
import 'package:flutter_styles_app/components/inputFields/beveleadRectangleDatePicker.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/controllers/bannerController.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/controllers/formController.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/secondFormScreen.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FirstFormScreen extends StatelessWidget {
  final FormController formController = FormController();
  final BannerController _bannerController = BannerController();

  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');

  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryConfig mediaConfig = MediaQueryConfig(context);
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: [
          Observer(
            builder: (context) {
              if (_bannerController.show) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    return MaterialBanner(
                      content: Text(
                        'Informe abaixo seu nome, um e-mail válido, seu CPF, e data de nascimento.',
                      ),
                      contentTextStyle: TextStyle(color: Theme.of(context).accentColor),
                      leading: CircleAvatar(child: Icon(Icons.info_outline_rounded, color: Colors.white),),
                      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      actions: [
                        TextButton(
                            onPressed: () {
                              _bannerController.changeShow(false);
                            },
                            child: Text(
                              'Entendi',
                              style: TextStyle(color: Theme.of(context).primaryColorDark),))
                      ],
                      forceActionsBelow: constraints.maxWidth <= 600 ? true : false,
                    );
                  }
                );
              } else {
                return Container();
              }
            }
          ),
          SizedBox(height: 10.0,),
          LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: mediaConfig.returnHeight(percent: 0.0423)),
                    child: Center(
                      child: Container(
                        width: constraints.maxWidth <= 600 ? null : 600,
                        decoration: ShapeDecoration(
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          shadows: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                offset: Offset(5.0, 3.5))
                          ],
                          color: Colors.grey[200],
                        ),
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: mediaConfig.returnHeight(percent: 0.0564),),
                            Observer(
                              builder: (context) {
                                return BeveledRectangleTextField(
                                  label: 'Nome',
                                  onChanged: formController.firstForm.changeNome,
                                  errorText: formController.validaNome(),
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
                                  keyboardType: TextInputType.name,
                                );
                              },
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Observer(
                              builder: (context) {
                                return BeveledRectangleTextField(
                                  label: 'Email',
                                  onChanged: formController.firstForm.changeEmail,
                                  errorText: formController.validaEmail(),
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
                                  keyboardType: TextInputType.emailAddress,
                                  inputAction: TextInputAction.next,
                                );
                              },
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Observer(
                              builder: (context) {
                                return BeveledRectangleTextField(
                                  label: 'CPF',
                                  onChanged: formController.firstForm.changeCPF,
                                  errorText: formController.validaCPF(),
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
                                        blurRadius: 2.0),
                                  ],
                                  keyboardType:
                                  TextInputType.numberWithOptions(decimal: false),
                                  inputAction: TextInputAction.next,
                                  masks: [cpfMask],
                                );
                              },
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Observer(
                              builder: (context) => BeveledRectangleDatePicker(
                                controller: dateController,
                                errotText: formController.validaDataNascimento(),
                                errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                                label: 'Data de nascimento',
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
                                onShowPicker: () async {
                                  final DateTime datepicker = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime.now(),
                                  );
                                  if (datepicker != null) {
                                    formController.firstForm.changeDataNascimento(datepicker);
                                    dateController.text = formatDate(datepicker, [dd, '/', mm, '/', yyyy]);
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Observer(
                                builder: (context) {
                                  return ElevatedButton.icon(
                                    onPressed:
                                    formController.firstFormIsValid ? () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => SecondFormScreen(formController: formController,),
                                          ),
                                      );
                                    } : null,

                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.resolveWith((states) => BeveledRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: BorderSide(
                                                color: Theme.of(context).primaryColorDark,
                                                style: BorderStyle.solid,
                                                width: 1.5)))
                                    ),
                                    icon: Icon(
                                      Icons.navigate_next_sharp,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                    label: Text(
                                      "Próximo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 18.0),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ClipPath(
                      clipper: FlagClipper(),
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        child: Center(child: Icon(Icons.assignment_outlined, color: Colors.white, size: 40.0,)),
                        padding: EdgeInsets.all(20.0),
                        width: mediaConfig.returnWidth(percent: 0.2222) > 100 ? 100 : mediaConfig.returnWidth(percent: 0.2222),
                      ),
                    ),
                  ),
                ],
              );
            }
          ),
        ],
      ),
    );
  }
}


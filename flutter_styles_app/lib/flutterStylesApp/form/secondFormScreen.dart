import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_styles_app/components/clippers/flagClipper.dart';
import 'package:flutter_styles_app/components/inputFields/beveleadRectangleDropdown.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/controllers/bannerController.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/controllers/formController.dart';
import 'package:flutter_styles_app/flutterStylesApp/home.dart';

class SecondFormScreen extends StatelessWidget {
  final FormController formController;
  final BannerController _bannerController = BannerController();

  SecondFormScreen({Key key, @required this.formController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryConfig mediaConfig = MediaQueryConfig(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Form'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(Icons.info_outline_rounded, color: Colors.white),
              tooltip: 'Mostrar dica',
              onPressed: () {
                _bannerController.changeShow(true);
              }),
        ],
      ),
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            Observer(builder: (context) {
              if (_bannerController.show) {
                return LayoutBuilder(builder: (context, constraints) {
                  return MaterialBanner(
                    content: Text(
                      'Informe abaixo seu RG, o órgão emissor (Ex: SSP), e sua orientação sexual.',
                    ),
                    contentTextStyle:
                        TextStyle(color: Theme.of(context).accentColor),
                    leading: CircleAvatar(
                      child:
                          Icon(Icons.info_outline_rounded, color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    actions: [
                      TextButton(
                          onPressed: () {
                            _bannerController.changeShow(false);
                          },
                          child: Text(
                            'Entendi',
                            style: TextStyle(
                                color: Theme.of(context).primaryColorDark),
                          ))
                    ],
                    forceActionsBelow:
                        constraints.maxWidth <= 600 ? true : false,
                  );
                });
              } else {
                return Container();
              }
            }),
            SizedBox(
              height: 10.0,
            ),
            LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: mediaConfig.returnHeight(percent: 0.0423)),
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
                            SizedBox(
                              height: mediaConfig.returnHeight(percent: 0.0564),
                            ),
                            Observer(builder: (context) {
                              return BeveledRectangleTextField(
                                label: "RG",
                                fieldStyle: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 16,
                                ),
                                onChanged: formController.secondForm.changeRg,
                                errorText: formController.validaRg(),
                                errorStyle: TextStyle(
                                    color: Color(0xFF5A0FFC),
                                    fontWeight: FontWeight.w500),
                                borderColor: Theme.of(context).primaryColorDark,
                                shadows: [
                                  BoxShadow(
                                      color: Theme.of(context).primaryColorDark,
                                      offset: Offset(4.0, 2.0),
                                      blurRadius: 2.0)
                                ],
                                keyboardType: TextInputType.number,
                                inputAction: TextInputAction.next,
                              );
                            }),
                            SizedBox(
                              height: 10.0,
                            ),
                            Observer(builder: (context) {
                              return BeveledRectangleTextField(
                                label: "Orgão emissor do RG",
                                fieldStyle: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: 16,
                                ),
                                onChanged: formController
                                    .secondForm.changeOrgaoEmissorRg,
                                errorText:
                                    formController.validaOrgaoEmissorRg(),
                                errorStyle: TextStyle(
                                    color: Color(0xFF5A0FFC),
                                    fontWeight: FontWeight.w500),
                                borderColor: Theme.of(context).primaryColorDark,
                                shadows: [
                                  BoxShadow(
                                      color: Theme.of(context).primaryColorDark,
                                      offset: Offset(4.0, 2.0),
                                      blurRadius: 2.0)
                                ],
                                keyboardType: TextInputType.text,
                                inputAction: TextInputAction.next,
                              );
                            }),
                            SizedBox(
                              height: 10.0,
                            ),
                            Observer(builder: (context) {
                              return BeveleadRectangleDropdown(
                                label: 'Sexo',
                                items: {
                                  0: 'Outro',
                                  1: "Masculino",
                                  2: 'Feminino',
                                  3: 'Erro'
                                },
                                value: null,
                                errorText: formController.validaSexo(),
                                errorStyle: TextStyle(
                                    color: Color(0xFF5A0FFC),
                                    fontWeight: FontWeight.w500),
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
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Theme.of(context).accentColor),
                                onChanged: formController.secondForm.changeSexo,
                              );
                            }),
                            SizedBox(
                              height: 20.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Observer(
                                builder: (context) {
                                  return ElevatedButton.icon(
                                    onPressed: formController.secondFormIsValid
                                        ? () {
                                            if (formController.isValid) {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return CustomDialog(
                                                      icon: Icon(
                                                        Icons
                                                            .assignment_turned_in_sharp,
                                                        color:
                                                            Colors.green[900],
                                                        size: 40.0,
                                                      ),
                                                      title:
                                                          'Dados salvos com sucesso!',
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pushReplacement(
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    Home(),
                                                          ),
                                                        );
                                                      });
                                                },
                                              );
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return CustomDialog(
                                                    canPop: true,
                                                    icon: Icon(
                                                      Icons
                                                          .assignment_late_sharp,
                                                      color: Colors.red[900],
                                                      size: 40.0,
                                                    ),
                                                    title:
                                                        'Erro ao salvar os dados!',
                                                    child: Container(
                                                      child: Text(
                                                        'Verifique seus dados e tente novamente.',
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                  );
                                                },
                                              );
                                            }
                                          }
                                        : null,
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty
                                            .resolveWith((states) =>
                                                BeveledRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius
                                                            .circular(10.0),
                                                    side: BorderSide(
                                                        color: Theme.of(context)
                                                            .primaryColorDark,
                                                        style:
                                                            BorderStyle.solid,
                                                        width: 1.5)))),
                                    icon: Icon(
                                      Icons.save_sharp,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                    label: Text(
                                      "Salvar",
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
                        child: Center(
                            child: Icon(
                          Icons.assignment_outlined,
                          color: Colors.white,
                          size: 40.0,
                        )),
                        padding: EdgeInsets.all(20.0),
                        width: mediaConfig.returnWidth(percent: 0.2222) > 100
                            ? 100
                            : mediaConfig.returnWidth(percent: 0.2222),
                      ),
                    ),
                  ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}

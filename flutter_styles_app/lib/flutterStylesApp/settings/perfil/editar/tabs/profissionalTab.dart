import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';
import 'package:flutter_styles_app/components/widgets/infoCard.dart';
import 'package:flutter_styles_app/components/widgets/infoCardWeb.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/editar/tabs/controllers/profissionalController.dart';

class ProfissionalTab extends StatelessWidget {
  final ProfissionalController _profissionalController =
      ProfissionalController();

  @override
  Widget build(BuildContext context) {
    MediaQueryConfig mediaConfig = MediaQueryConfig(context);
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth <= 600) {
                  return InfoCard(
                    height: mediaConfig.returnHeight(percent: 0.61382),
                    icon: Icons.edit_outlined,
                    iconColor: Colors.white,
                    backgroundIconColor: Theme.of(context).primaryColor,
                    cardBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    iconBoxBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    iconBoxSize: 60.0,
                    child: Column(
                      children: [
                        ValueListenableBuilder(
                            valueListenable: _profissionalController.empresa,
                            builder: (context, value, _) {
                              return BeveledRectangleTextField(
                                label: 'Empresa',
                                onChanged: _profissionalController.changeEmpresa,
                                errorText: _profissionalController.validaEmpresa(),
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
                                prefixIcon: Icon(
                                  Icons.business,
                                  size: 30.0,
                                  color: Theme.of(context).accentColor,
                                ),
                                inputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                              );
                            }),
                        SizedBox(
                          height: 5.0,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _profissionalController.cargo,
                            builder: (context, _, __) {
                              return BeveledRectangleTextField(
                                label: 'Cargo',
                                onChanged: _profissionalController.changeCargo,
                                errorStyle: TextStyle(
                                    color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                                prefixIcon: Icon(
                                  Icons.work_rounded,
                                  size: 30.0,
                                  color: Theme.of(context).accentColor,
                                ),
                                inputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                              );
                            }
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _profissionalController.tempoDeServico,
                            builder: (context, _, __) {
                              return BeveledRectangleTextField(
                                label: 'Tempo de serviço',
                                onChanged: (value) => _profissionalController.changeTempo(int.parse(value)),
                                errorStyle: TextStyle(
                                    color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                                prefixIcon: Icon(
                                  Icons.access_time_sharp,
                                  size: 30.0,
                                  color: Theme.of(context).accentColor,
                                ),
                                inputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                              );
                            }
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _profissionalController.salario,
                            builder: (context, _, __) {
                              return BeveledRectangleTextField(
                                label: 'Salário',
                                onChanged: (value) => _profissionalController.changeSalario(double.parse(value)),
                                errorStyle: TextStyle(
                                    color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                                prefixIcon: Icon(
                                  Icons.monetization_on,
                                  size: 30.0,
                                  color: Theme.of(context).accentColor,
                                ),
                                inputAction: TextInputAction.done,
                                keyboardType: TextInputType.numberWithOptions(
                                    signed: false, decimal: true),
                              );
                            }
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            child: Text(
                              "Salvar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0),
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.resolveWith<EdgeInsets>((states) => EdgeInsets.all(8.0)),
                                overlayColor: MaterialStateProperty.resolveWith<Color>((states) => Theme.of(context).primaryColorLight),
                                elevation: MaterialStateProperty.resolveWith<double>((states) => 5.0),
                                shape: MaterialStateProperty.resolveWith((states) => BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(
                                        color: Theme.of(context).primaryColorDark,
                                        width: 2.0
                                    )
                                ))
                            ),
                            onPressed: () {
                              if (_profissionalController.isValid) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return CustomDialog(
                                      icon: Icon(Icons.save_rounded, color: Colors.green[900], size: 40.0,),
                                      title: 'Informações profissionais alteradas com sucesso!',
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                      },
                                    );
                                  },
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return CustomDialog(
                                      canPop: true,
                                      icon: Icon(Icons.assignment_late, color: Colors.red[900], size: 40.0,),
                                      title: 'Dados incorretos!',
                                      child: Text("É necessário preencher alguns dados corretamente "
                                          "antes de realizar qualquer alteração!"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    );
                                  },
                                );
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  );
                } else {
                  return Center(
                    child: Container(
                      width: 600,
                      child: InfoCardWeb(
                        icon: Icons.edit_outlined,
                        iconColor: Colors.white,
                        backgroundIconColor: Theme.of(context).primaryColor,
                        cardBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        iconBoxBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        iconBoxSize: 60.0,
                        child: Column(
                          children: [
                            ValueListenableBuilder(
                                valueListenable: _profissionalController.empresa,
                                builder: (context, value, _) {
                                  return BeveledRectangleTextField(
                                    label: 'Empresa',
                                    onChanged: _profissionalController.changeEmpresa,
                                    errorText: _profissionalController.validaEmpresa(),
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
                                    prefixIcon: Icon(
                                      Icons.business,
                                      size: 30.0,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    inputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                  );
                                }),
                            SizedBox(
                              height: 5.0,
                            ),
                            ValueListenableBuilder(
                                valueListenable: _profissionalController.cargo,
                                builder: (context, _, __) {
                                  return BeveledRectangleTextField(
                                    label: 'Cargo',
                                    onChanged: _profissionalController.changeCargo,
                                    errorStyle: TextStyle(
                                        color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                                    prefixIcon: Icon(
                                      Icons.work_rounded,
                                      size: 30.0,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    inputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                  );
                                }
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            ValueListenableBuilder(
                                valueListenable: _profissionalController.tempoDeServico,
                                builder: (context, _, __) {
                                  return BeveledRectangleTextField(
                                    label: 'Tempo de serviço',
                                    onChanged: (value) => _profissionalController.changeTempo(int.parse(value)),
                                    errorStyle: TextStyle(
                                        color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                                    prefixIcon: Icon(
                                      Icons.access_time_sharp,
                                      size: 30.0,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    inputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                  );
                                }
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            ValueListenableBuilder(
                                valueListenable: _profissionalController.salario,
                                builder: (context, _, __) {
                                  return BeveledRectangleTextField(
                                    label: 'Salário',
                                    onChanged: (value) => _profissionalController.changeSalario(double.parse(value)),
                                    errorStyle: TextStyle(
                                        color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                                    prefixIcon: Icon(
                                      Icons.monetization_on,
                                      size: 30.0,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    inputAction: TextInputAction.done,
                                    keyboardType: TextInputType.numberWithOptions(
                                        signed: false, decimal: true),
                                  );
                                }
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                child: Text(
                                  "Salvar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.resolveWith<EdgeInsets>((states) => EdgeInsets.all(20.0)),
                                    overlayColor: MaterialStateProperty.resolveWith<Color>((states) => Theme.of(context).primaryColorLight),
                                    elevation: MaterialStateProperty.resolveWith<double>((states) => 5.0),
                                    shape: MaterialStateProperty.resolveWith((states) => BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: BorderSide(
                                            color: Theme.of(context).primaryColorDark,
                                            width: 2.0
                                        )
                                    ))
                                ),
                                onPressed: () {
                                  if (_profissionalController.isValid) {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return CustomDialog(
                                          icon: Icon(Icons.save_rounded, color: Colors.green[900], size: 40.0,),
                                          title: 'Informações profissionais alteradas com sucesso!',
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            Navigator.of(context).pop();
                                          },
                                        );
                                      },
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return CustomDialog(
                                          canPop: true,
                                          icon: Icon(Icons.assignment_late, color: Colors.red[900], size: 40.0,),
                                          title: 'Dados incorretos!',
                                          child: Text("É necessário preencher alguns dados corretamente "
                                              "antes de realizar qualquer alteração!"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        );
                                      },
                                    );
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }
            )
          ],
        ),
      ),
    );
  }
}

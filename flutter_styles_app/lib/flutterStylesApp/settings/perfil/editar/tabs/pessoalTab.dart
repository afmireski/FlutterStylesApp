import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styles_app/components/inputFields/beveleadRectangleDatePicker.dart';
import 'package:flutter_styles_app/components/inputFields/beveleadRectangleDropdown.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';
import 'package:flutter_styles_app/components/widgets/infoCard.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/editar/tabs/controllers/pessoalController.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PessoalTab extends StatelessWidget {
  final PessoalController _pessoalController = PessoalController();

  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');

  @override
  Widget build(BuildContext context) {
    MediaQueryConfig mediaConfig = MediaQueryConfig(context);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) { ///MOBILE
            return Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                children: [
                  InfoCard(
                    height: mediaConfig.returnHeight(percent: 0.70555),
                    icon: Icons.edit_sharp,
                    iconColor: Colors.white,
                    backgroundIconColor: Theme.of(context).primaryColor,
                    cardBorder: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    cardShadows: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 2.0,
                        offset: Offset(-2.0, 5.0),
                      ),
                    ],
                    iconBoxBorder: CircleBorder(),
                    iconBoxSize: 60.0,
                    child: Column(
                      children: [
                        ValueListenableBuilder(
                          valueListenable: _pessoalController.nome,
                          builder: (context, value, child) {
                            return BeveledRectangleTextField(
                              label: 'Nome',
                              onChanged: _pessoalController.changeNome,
                              errorText: _pessoalController.validaNome(),
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
                                Icons.person_pin_sharp,
                                size: 30.0,
                                color: Theme.of(context).accentColor,
                              ),
                              inputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                            );
                          },
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _pessoalController.cpf,
                            builder: (context, value, child) {
                              return BeveledRectangleTextField(
                                label: 'CPF',
                                onChanged: _pessoalController.changeCpf,
                                errorText: _pessoalController.validaCpf(),
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
                                  Icons.account_box_rounded,
                                  size: 30.0,
                                  color: Theme.of(context).accentColor,
                                ),
                                inputAction: TextInputAction.next,
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: false, signed: false),
                                masks: [cpfMask],
                              );
                            }),
                        SizedBox(
                          height: 5.0,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _pessoalController.valueSexo,
                            builder: (context, value, child) {
                              return BeveleadRectangleDropdown(
                                label: "Sexo",
                                items: {1: "Masculino", 2: "Feminino", 0: "Outro"},
                                value: value,
                                errorText: _pessoalController.validaSexo(),
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
                                  Icons.wc,
                                  size: 30.0,
                                  color: Theme.of(context).accentColor,
                                ),
                                onChanged: (value) =>
                                    _pessoalController.changeSexo(value),
                              );
                            }),
                        SizedBox(
                          height: 5.0,
                        ),
                        ValueListenableBuilder(
                            valueListenable: _pessoalController.dataNascimento,
                            builder: (context, value, child) {
                              return BeveledRectangleDatePicker(
                                  label: "Data de Nascimento",
                                  controller: TextEditingController(
                                      text: _pessoalController.dataNascimento.value ==
                                          null
                                          ? ""
                                          : formatDate(
                                          _pessoalController.dataNascimento.value,
                                          [dd, '/', mm, '/', yyyy])),
                                  errotText:
                                  _pessoalController.validaDataNascimento(),
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
                                    Icons.cake_rounded,
                                    color: Theme.of(context).accentColor,
                                    size: 30.0,
                                  ),
                                  onShowPicker: () async {
                                    DateTime picker = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime.now(),
                                    );
                                    if (picker != null) {
                                      _pessoalController.changeDataNascimento(picker);
                                    }
                                  });
                            }),
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
                                if (_pessoalController.isValid) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return CustomDialog(
                                        icon: Icon(Icons.save_rounded, color: Colors.green[900], size: 40.0,),
                                        title: 'Informações pessoais alteradas com sucesso!',
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
                                        child: Text("É necessário preencher todos os dados corretamente "
                                            "antes de realizar qualquer alteração!"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      );
                                    },
                                  );
                                }
                              },
                            )),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else { ///WEB
            return Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                children: [
                  Center(
                    child: Container(
                      width: 600,
                      child: InfoCard(
                        height: mediaConfig.returnHeight(percent: 0.70555) <= 700 ? mediaConfig.returnHeight(percent: 0.70555) : 500,
                        icon: Icons.edit_sharp,
                        iconColor: Colors.white,
                        backgroundIconColor: Theme.of(context).primaryColor,
                        cardBorder: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        iconBoxBorder: CircleBorder(),
                        iconBoxSize: 60.0,
                        child: Column(
                          children: [
                            ValueListenableBuilder(
                              valueListenable: _pessoalController.nome,
                              builder: (context, value, child) {
                                return BeveledRectangleTextField(
                                  label: 'Nome',
                                  onChanged: _pessoalController.changeNome,
                                  errorText: _pessoalController.validaNome(),
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
                                    Icons.person_pin_sharp,
                                    size: 30.0,
                                    color: Theme.of(context).accentColor,
                                  ),
                                  inputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                );
                              },
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            ValueListenableBuilder(
                                valueListenable: _pessoalController.cpf,
                                builder: (context, value, child) {
                                  return BeveledRectangleTextField(
                                    label: 'CPF',
                                    onChanged: _pessoalController.changeCpf,
                                    errorText: _pessoalController.validaCpf(),
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
                                      Icons.account_box_rounded,
                                      size: 30.0,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    inputAction: TextInputAction.next,
                                    keyboardType: TextInputType.numberWithOptions(
                                        decimal: false, signed: false),
                                    masks: [cpfMask],
                                  );
                                }),
                            SizedBox(
                              height: 5.0,
                            ),
                            ValueListenableBuilder(
                                valueListenable: _pessoalController.valueSexo,
                                builder: (context, value, child) {
                                  return BeveleadRectangleDropdown(
                                    label: "Sexo",
                                    items: {1: "Masculino", 2: "Feminino", 0: "Outro"},
                                    value: value,
                                    errorText: _pessoalController.validaSexo(),
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
                                      Icons.wc,
                                      size: 30.0,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    onChanged: (value) =>
                                        _pessoalController.changeSexo(value),
                                  );
                                }),
                            SizedBox(
                              height: 5.0,
                            ),
                            ValueListenableBuilder(
                                valueListenable: _pessoalController.dataNascimento,
                                builder: (context, value, child) {
                                  return BeveledRectangleDatePicker(
                                      label: "Data de Nascimento",
                                      controller: TextEditingController(
                                          text: _pessoalController.dataNascimento.value ==
                                              null
                                              ? ""
                                              : formatDate(
                                              _pessoalController.dataNascimento.value,
                                              [dd, '/', mm, '/', yyyy])),
                                      errotText:
                                      _pessoalController.validaDataNascimento(),
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
                                        Icons.cake_rounded,
                                        color: Theme.of(context).accentColor,
                                        size: 30.0,
                                      ),
                                      onShowPicker: () async {
                                        DateTime picker = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime.now(),
                                        );
                                        if (picker != null) {
                                          _pessoalController.changeDataNascimento(picker);
                                        }
                                      });
                                }),
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
                                        fontSize: 20.0),
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
                                    if (_pessoalController.isValid) {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return CustomDialog(
                                            icon: Icon(Icons.save_rounded, color: Colors.green[900], size: 40.0,),
                                            title: 'Informações pessoais alteradas com sucesso!',
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
                                            child: Text("É necessário preencher todos os dados corretamente "
                                                "antes de realizar qualquer alteração!"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          );
                                        },
                                      );
                                    }
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        }
      ),
    );
  }
}

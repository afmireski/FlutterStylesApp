import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styles_app/components/inputFields/beveleadRectangleDatePicker.dart';
import 'package:flutter_styles_app/components/inputFields/beveleadRectangleDropdown.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/widgets/infoCard.dart';

class PessoalTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            InfoCard(
              height: 425.0,
              icon: Icons.edit_sharp,
              iconColor: Colors.white,
              backgroundIconColor: Theme.of(context).primaryColor,
              cardBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
                  BeveledRectangleTextField(
                    label: 'Nome',
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
                    prefixIcon: Icon(Icons.person_pin_sharp, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 5.0,),
                  BeveledRectangleTextField(
                    label: 'CPF',
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
                    prefixIcon: Icon(Icons.account_box_rounded, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.numberWithOptions(decimal: false, signed: false),
                  ),
                  SizedBox(height: 5.0,),
                  BeveleadRectangleDropdown(
                    label: "Sexo",
                    items: {
                      1: "Masculino",
                      2: "Feminino",
                      0: "Outro"
                    },
                    value: 0,
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
                    prefixIcon: Icon(Icons.wc, size: 30.0, color: Theme.of(context).accentColor,),
                    onChanged: null,
                  ),
                  SizedBox(height: 5.0,),
                  BeveledRectangleDatePicker(
                      label: "Data de Nascimento",
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
                      onShowPicker: null),
                  SizedBox(height: 10.0,),
                  Align(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      child: Text(
                        "Salvar",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0
                        ),
                      ),
                      padding: EdgeInsets.all(8.0),
                      splashColor: Theme.of(context).primaryColorLight,
                      disabledElevation: 0.0,
                      elevation: 5.0,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Theme.of(context).primaryColorDark,
                          width: 2.0
                        )
                      ),
                      onPressed: () {

                      },
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

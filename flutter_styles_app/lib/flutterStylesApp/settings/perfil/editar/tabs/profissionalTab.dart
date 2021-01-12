import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/widgets/infoCard.dart';

class ProfissionalTab extends StatelessWidget {
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
              icon: Icons.edit_outlined,
              iconColor: Colors.white,
              backgroundIconColor: Theme.of(context).primaryColor,
              cardBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              iconBoxBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              iconBoxSize: 60.0,
              child:  Column(
                children: [
                  BeveledRectangleTextField(
                    label: 'Empresa',
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
                    prefixIcon: Icon(Icons.business, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 5.0,),
                  BeveledRectangleTextField(
                    label: 'Cargo',
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
                    prefixIcon: Icon(Icons.work_rounded, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 5.0,),
                  BeveledRectangleTextField(
                    label: 'Tempo de serviço',
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
                    prefixIcon: Icon(Icons.access_time_sharp, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 5.0,),
                  BeveledRectangleTextField(
                    label: 'Salário',
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
                    prefixIcon: Icon(Icons.monetization_on, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.numberWithOptions(signed: false, decimal: true),
                  ),
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

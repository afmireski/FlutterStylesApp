import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/widgets/infoCard.dart';

class LocalTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            InfoCard(
              height: 400.0,
              icon: Icons.edit_location_rounded,
              iconColor: Colors.white,
              backgroundIconColor: Theme.of(context).primaryColor,
              cardBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              cardShadows: [
                BoxShadow(
                  color: Colors.black87,
                  blurRadius: 2.0,
                  offset: Offset(4.0, 5.0),
                ),
              ],
              iconBoxBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              iconBoxSize: 60.0,
              child:  Column(
                children: [
                  BeveledRectangleTextField(
                    label: 'Endereço',
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
                    keyboardType: TextInputType.streetAddress,
                    prefixIcon: Icon(Icons.location_history, size: 30.0, color: Theme.of(context).accentColor,),
                    maxLines: 2,
                  ),
                  SizedBox(height: 5.0,),
                  BeveledRectangleTextField(
                    label: 'Complemento',
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
                    prefixIcon: Icon(Icons.house_rounded, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 5.0,),
                  BeveledRectangleTextField(
                    label: 'CEP',
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
                    prefixIcon: Icon(Icons.location_on, size: 30.0, color: Theme.of(context).accentColor,),
                    inputAction: TextInputAction.next,
                    keyboardType: TextInputType.numberWithOptions(decimal: false, signed: false),
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

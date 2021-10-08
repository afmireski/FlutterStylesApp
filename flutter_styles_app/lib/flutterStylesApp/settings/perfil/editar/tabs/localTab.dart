import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/size/mediaQueryConfig.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';
import 'package:flutter_styles_app/components/widgets/infoCard.dart';
import 'package:flutter_styles_app/components/widgets/infoCardWeb.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/editar/tabs/controllers/localController.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LocalTab extends StatelessWidget {

  final LocalController _localController = LocalController();

  final MaskTextInputFormatter _cepMask = MaskTextInputFormatter(mask: "#####-##");

  @override
  Widget build(BuildContext context) {
    MediaQueryConfig mediaConfig = MediaQueryConfig(context);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
         if (constraints.maxWidth <= 600) {
           return Container(
             child: ListView(
               physics: BouncingScrollPhysics(),
               padding: EdgeInsets.symmetric(horizontal: 10.0),
               children: [
                 InfoCard(
                   height: mediaConfig.returnHeight(percent: 0.59226),
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
                       ValueListenableBuilder(
                           valueListenable: _localController.endereco,
                           builder: (context, value, _) {
                             return BeveledRectangleTextField(
                               label: 'Endereço',
                               onChanged: _localController.changeEndereco,
                               errorText: _localController.validaEndereco(),
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
                             );
                           }
                       ),
                       SizedBox(height: 5.0,),
                       ValueListenableBuilder(
                           valueListenable: _localController.complemento,
                           builder: (context, value, _) {
                             return BeveledRectangleTextField(
                               label: 'Complemento',
                               onChanged: _localController.changeComplemento,
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
                             );
                           }
                       ),
                       SizedBox(height: 5.0,),
                       ValueListenableBuilder(
                           valueListenable: _localController.cep,
                           builder: (context, value, _) {
                             return BeveledRectangleTextField(
                               label: 'CEP',
                               onChanged: _localController.changeCep,
                               errorText: _localController.validaCEP(),
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
                               inputAction: TextInputAction.done,
                               keyboardType: TextInputType.numberWithOptions(decimal: false, signed: false),
                               masks: [_cepMask],
                             );
                           }
                       ),
                       SizedBox(height: 10.0,),
                       Align(
                         alignment: Alignment.center,
                         child: ElevatedButton(
                           child: Text(
                             "Salvar",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.w500,
                                 fontSize: 18.0
                             ),
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
                             if (_localController.isValid) {
                               showDialog(
                                 context: context,
                                 builder: (context) {
                                   return CustomDialog(
                                     icon: Icon(Icons.save_rounded, color: Colors.green[900], size: 40.0,),
                                     title: 'Informações de local alteradas com sucesso!',
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
                 )
               ],
             ),
           );
         } else {
           return Container(
             child: ListView(
               physics: BouncingScrollPhysics(),
               padding: EdgeInsets.symmetric(horizontal: 10.0),
               children: [
                 Center(
                   child: Container(
                     width: 600,
                     child: InfoCardWeb(
                       icon: Icons.edit_location_rounded,
                       iconColor: Colors.white,
                       backgroundIconColor: Theme.of(context).primaryColor,
                       cardBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                       iconBoxBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                       iconBoxSize: 60.0,
                       child:  Column(
                         children: [
                           ValueListenableBuilder(
                               valueListenable: _localController.endereco,
                               builder: (context, value, _) {
                                 return BeveledRectangleTextField(
                                   label: 'Endereço',
                                   onChanged: _localController.changeEndereco,
                                   errorText: _localController.validaEndereco(),
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
                                 );
                               }
                           ),
                           SizedBox(height: 5.0,),
                           ValueListenableBuilder(
                               valueListenable: _localController.complemento,
                               builder: (context, value, _) {
                                 return BeveledRectangleTextField(
                                   label: 'Complemento',
                                   onChanged: _localController.changeComplemento,
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
                                 );
                               }
                           ),
                           SizedBox(height: 5.0,),
                           ValueListenableBuilder(
                               valueListenable: _localController.cep,
                               builder: (context, value, _) {
                                 return BeveledRectangleTextField(
                                   label: 'CEP',
                                   onChanged: _localController.changeCep,
                                   errorText: _localController.validaCEP(),
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
                                   inputAction: TextInputAction.done,
                                   keyboardType: TextInputType.numberWithOptions(decimal: false, signed: false),
                                   masks: [_cepMask],
                                 );
                               }
                           ),
                           SizedBox(height: 10.0,),
                           Align(
                             alignment: Alignment.center,
                             child: ElevatedButton(
                               child: Text(
                                 "Salvar",
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontWeight: FontWeight.w500,
                                     fontSize: 18.0
                                 ),
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
                                 if (_localController.isValid) {
                                   showDialog(
                                     context: context,
                                     builder: (context) {
                                       return CustomDialog(
                                         icon: Icon(Icons.save_rounded, color: Colors.green[900], size: 40.0,),
                                         title: 'Informações de local alteradas com sucesso!',
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

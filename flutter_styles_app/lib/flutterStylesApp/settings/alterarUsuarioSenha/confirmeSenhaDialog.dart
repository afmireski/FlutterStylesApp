import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/alterarUsuarioSenha/alterarUsuarioDialog.dart';

class ConfirmeSenhaDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: Icon(
        Icons.lock_open_sharp,
        color: Theme.of(context).primaryColorDark,
        size: 40.0,
      ),
      child: BeveledRectangleTextField(
        label: "Senha",
        fieldStyle: TextStyle(
          color: Theme.of(context).primaryColorDark,
          fontSize: 16,
        ),
        borderColor: Theme.of(context).accentColor,
        shadows: [
          BoxShadow(
              color: Theme.of(context).accentColor,
              offset: Offset(4.0, 2.0),
              blurRadius: 2.0)
        ],
      ),
      title: "Confirme sua senha",
      buttonLabel: "Validar",
      labelStyle: TextStyle(fontSize: 18.0),
      onPressed: () {
        Navigator.of(context).pop();
        showDialog(
          context: context,
          builder: (context) => AlterarUsuarioDialog(),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';

class AlterarUsuarioDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: Icon(
        Icons.edit_sharp,
        color: Theme.of(context).primaryColorDark,
        size: 40.0,
      ),
      child: Column(
        children: [
          BeveledRectangleTextField(
            label: "Novo usuário",
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
            keyboardType: TextInputType.name,
            inputAction: TextInputAction.next,
          ),
          SizedBox(height: 10.0,),
          BeveledRectangleTextField(
            label: "Nova senha",
            isObscure: true,
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
            keyboardType: TextInputType.visiblePassword,
            inputAction: TextInputAction.next,
          ),
          SizedBox(height: 10.0,),
          BeveledRectangleTextField(
            label: "Confirmar nova senha",
            isObscure: true,
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
            keyboardType: TextInputType.visiblePassword,
            inputAction: TextInputAction.done,
          ),
        ],
      ),
      title: "Informe os novos dados:",
      buttonLabel: "Alterar",
      labelStyle: TextStyle(fontSize: 18.0),
      border: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),

      ),
      shadows: [
        BoxShadow(
            color: Colors.black87,
            offset: Offset(6.0, 4.0),
            blurRadius: 1.0)
      ],
      onPressed: () {
        Navigator.of(context).pop();
        if (true) {
          showDialog(
            context: context,
            builder: (context) {
              return CustomDialog(
                icon: Icon(Icons.done_outline_sharp, color: Colors.green[900], size: 40.0,),
                title: "Dados alterados!",
                child: Text(
                  "Seu novo usuário e senha foram cadastrados com sucesso",
                ),
                onPressed: () => Navigator.of(context).pop(),
              );
            },
          );
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return CustomDialog(
                icon: Icon(Icons.edit_off, color: Colors.red[900], size: 40.0,),
                title: "Falha ao salvar!",
                child: Text(
                  "Aparentemente ocorreu um erro ao salvar seus novos dados. Tente novamente mais tarde!",
                ),
                onPressed: () => Navigator.of(context).pop(),
              );
            },
          );
        }
      },
    );
  }
}

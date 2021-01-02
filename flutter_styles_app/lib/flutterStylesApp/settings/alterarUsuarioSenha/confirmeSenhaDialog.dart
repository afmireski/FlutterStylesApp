import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/alterarUsuarioSenha/alterarUsuarioDialog.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/alterarUsuarioSenha/controllers/confirmeSenhaController.dart';

class ConfirmeSenhaDialog extends StatelessWidget {

  final ConfirmeSenhaController _confirmeSenhaController = ConfirmeSenhaController();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return CustomDialog(
          icon: Icon(
            Icons.lock_open_sharp,
            color: Theme.of(context).primaryColorDark,
            size: 40.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: BeveledRectangleTextField(
                    label: "Senha",
                    onChanged: _confirmeSenhaController.confirmeSenha.changeSenha,
                    errorText: _confirmeSenhaController.validaConfirmeSenha(),
                    errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                    isObscure: !_confirmeSenhaController.mostrarSenha,
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
                ),
              ),
              SizedBox(width: 10.0,),
              Container(
                decoration: ShapeDecoration(
                    shape: BeveledRectangleBorder(
                      side: BorderSide(
                          style: BorderStyle.solid,
                          color: Theme.of(context).accentColor,
                          width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadows: [
                      BoxShadow(
                          color: Theme.of(context).accentColor,
                          offset: Offset(4.0, 2.0),
                          blurRadius: 2.0)
                    ],
                    color: Colors.white
                ),
                child: IconButton(
                  padding: EdgeInsets.all(5.0),
                  icon: Icon(!_confirmeSenhaController.mostrarSenha ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: Theme.of(context).accentColor, size: 30.0,),
                  onPressed: () => _confirmeSenhaController.changeMostrarSenha(!_confirmeSenhaController.mostrarSenha),
                ),
              )
            ],
          ),
          title: "Confirme sua senha",
          buttonLabel: "Validar",
          labelStyle: TextStyle(fontSize: 18.0),
          onPressed: _confirmeSenhaController.isValid ? () {
            Navigator.of(context).pop();
            showDialog(
              context: context,
              builder: (context) => AlterarUsuarioDialog(),
            );
          } : null,
        );
      }
    );
  }
}

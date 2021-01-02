import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/components/widgets/customDialog.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/alterarUsuarioSenha/controllers/alterarUsuarioController.dart';

class AlterarUsuarioDialog extends StatelessWidget {

  final AlterarUsuarioController _alterarUsuarioController = AlterarUsuarioController();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
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
                onChanged: _alterarUsuarioController.alterarUsuario.changeEmail,
                errorText: _alterarUsuarioController.validaEmail(),
                fieldStyle: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 16,
                ),
                errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: BeveledRectangleTextField(
                        label: "Nova senha",
                        onChanged: _alterarUsuarioController.alterarUsuario.changeSenha,
                        errorText: _alterarUsuarioController.validaSenha(),
                        isObscure: !_alterarUsuarioController.mostrarSenha,
                        fieldStyle: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 16,
                        ),
                        errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                      icon: Icon(!_alterarUsuarioController.mostrarSenha ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Theme.of(context).accentColor, size: 30.0,),
                      onPressed: () => _alterarUsuarioController.changeMostrarSenha(!_alterarUsuarioController.mostrarSenha),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: BeveledRectangleTextField(
                        label: "Confirmar nova senha",
                        onChanged: _alterarUsuarioController.alterarUsuario.changeConfirmacaoSenha,
                        errorText: _alterarUsuarioController.validaConfirmacaoSenha(),
                        isObscure: !_alterarUsuarioController.mostrarSenha,
                        fieldStyle: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontSize: 16,
                        ),
                        errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                      icon: Icon(!_alterarUsuarioController.mostrarSenha ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Theme.of(context).accentColor, size: 30.0,),
                      onPressed: () => _alterarUsuarioController.changeMostrarSenha(!_alterarUsuarioController.mostrarSenha),
                    ),
                  )
                ],
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
          onPressed:_alterarUsuarioController.isValid ? () {
            Navigator.of(context).pop();
            if (_alterarUsuarioController.isValid) {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(
                    canPop: true,
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
                    canPop: true,
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
          } : null,
        );
      }
    );
  }
}

import 'package:flutter_styles_app/flutterStylesApp/settings/alterarUsuarioSenha/models/confirmeSenha.dart';
import 'package:mobx/mobx.dart';
part 'confirmeSenhaController.g.dart';

class ConfirmeSenhaController = _ConfirmeSenhaController with _$ConfirmeSenhaController;

abstract class _ConfirmeSenhaController with Store {

  final ConfirmeSenha confirmeSenha = ConfirmeSenha();

  @observable
  bool mostrarSenha = false;

  @action
  void changeMostrarSenha(bool value) => mostrarSenha = value;

  @computed
  bool get isValid => validaConfirmeSenha() == null;

  String validaConfirmeSenha() {
    if (confirmeSenha.senha == null || confirmeSenha.senha.trim().isEmpty) {
      return "Informe sua senha";
    } else if (confirmeSenha.senha.length < 6) {
      return "No mínimo 6 dígitos";
    } else {
      return null;
    }
  }
}
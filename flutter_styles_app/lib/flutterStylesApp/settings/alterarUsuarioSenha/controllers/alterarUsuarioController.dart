import 'package:flutter_styles_app/flutterStylesApp/settings/alterarUsuarioSenha/models/alterarUsuario.dart';
import 'package:mobx/mobx.dart';
part 'alterarUsuarioController.g.dart';

class AlterarUsuarioController = _AlterarUsuarioController with _$AlterarUsuarioController;

abstract class _AlterarUsuarioController with Store {
  final AlterarUsuario alterarUsuario = AlterarUsuario();

  @computed
  bool get isValid => validaEmail() == null && validaSenha() == null && validaConfirmacaoSenha() == null;

  @observable
  bool mostrarSenha = false;

  @action
  void changeMostrarSenha(bool value) => mostrarSenha = value;

  String validaEmail() {
    if (alterarUsuario.email == null || alterarUsuario.email.trim().isEmpty) {
      return 'Digite seu novo e-mail';
    } else if (!alterarUsuario.email.contains('@') || !alterarUsuario.email.contains('.com')) {
      return 'Email inválido!';
    } else {
      return null;
    }
  }

  String validaSenha() {
    if (alterarUsuario.senha == null || alterarUsuario.senha.trim().isEmpty) {
      return 'Digite sua nova senha';
    } else if (alterarUsuario.senha.length < 6) {
      return 'No mínimo 6 caracteres!';
    } else {
      return null;
    }
  }

  String validaConfirmacaoSenha() {
    if (alterarUsuario.confirmacaoSenha == null || alterarUsuario.confirmacaoSenha.trim().isEmpty) {
      return 'Digite a mesma senha do campo acima!';
    } else if (alterarUsuario.confirmacaoSenha.length < 6) {
      return 'No mínimo 6 caracteres!';
    } else if (alterarUsuario.confirmacaoSenha != alterarUsuario.senha) {
      return 'As duas senhas não são iguais!';
    } else {
      return null;
    }
  }


}
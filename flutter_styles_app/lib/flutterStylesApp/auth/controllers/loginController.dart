import 'dart:math';

import 'package:flutter_styles_app/flutterStylesApp/auth/models/loginModel.dart';
import 'package:mobx/mobx.dart';

part 'loginController.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  LoginModel loginModel = LoginModel();

  @observable
  bool showPassword = false;

  @observable
  bool lembrarUsuario = false;

  @action
  void changeShowPassword(bool value) => showPassword = value;

  @action
  void changeLembrarUsuario(bool value) => lembrarUsuario = value;

  @computed
  bool get isValid => validaEmail() == null && validaPassword() == null;

  ///Validators

  String validaEmail() {
    if (loginModel.email == null || loginModel.email.trim().isEmpty) {
      return 'Digite seu e-mail de usuário';
    } else if (!loginModel.email.contains('@') || !loginModel.email.contains('.com')) {
      return 'Email inválido!';
    } else {
      return null;
    }
  }

  String validaPassword() {
    if (loginModel.password == null || loginModel.password.trim().isEmpty) {
      return 'Digite sua senha de usuário';
    } else if (loginModel.password.length < 6) {
      return 'No mínimo 6 caracteres!';
    } else {
      return null;
    }
  }

}
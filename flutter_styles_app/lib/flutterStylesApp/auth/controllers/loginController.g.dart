// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginController, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??=
          Computed<bool>(() => super.isValid, name: '_LoginController.isValid'))
      .value;

  final _$showPasswordAtom = Atom(name: '_LoginController.showPassword');

  @override
  bool get showPassword {
    _$showPasswordAtom.reportRead();
    return super.showPassword;
  }

  @override
  set showPassword(bool value) {
    _$showPasswordAtom.reportWrite(value, super.showPassword, () {
      super.showPassword = value;
    });
  }

  final _$lembrarUsuarioAtom = Atom(name: '_LoginController.lembrarUsuario');

  @override
  bool get lembrarUsuario {
    _$lembrarUsuarioAtom.reportRead();
    return super.lembrarUsuario;
  }

  @override
  set lembrarUsuario(bool value) {
    _$lembrarUsuarioAtom.reportWrite(value, super.lembrarUsuario, () {
      super.lembrarUsuario = value;
    });
  }

  final _$_LoginControllerActionController =
      ActionController(name: '_LoginController');

  @override
  void changeShowPassword(bool value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.changeShowPassword');
    try {
      return super.changeShowPassword(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLembrarUsuario(bool value) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.changeLembrarUsuario');
    try {
      return super.changeLembrarUsuario(value);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showPassword: ${showPassword},
lembrarUsuario: ${lembrarUsuario},
isValid: ${isValid}
    ''';
  }
}

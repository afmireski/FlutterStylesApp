// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginModel on _LoginModel, Store {
  final _$emailAtom = Atom(name: '_LoginModel.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginModel.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_LoginModelActionController = ActionController(name: '_LoginModel');

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_LoginModelActionController.startAction(
        name: '_LoginModel.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_LoginModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_LoginModelActionController.startAction(
        name: '_LoginModel.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_LoginModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password}
    ''';
  }
}

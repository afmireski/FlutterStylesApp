// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterarUsuario.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlterarUsuario on _AlterarUsuario, Store {
  final _$emailAtom = Atom(name: '_AlterarUsuario.email');

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

  final _$senhaAtom = Atom(name: '_AlterarUsuario.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$confirmacaoSenhaAtom = Atom(name: '_AlterarUsuario.confirmacaoSenha');

  @override
  String get confirmacaoSenha {
    _$confirmacaoSenhaAtom.reportRead();
    return super.confirmacaoSenha;
  }

  @override
  set confirmacaoSenha(String value) {
    _$confirmacaoSenhaAtom.reportWrite(value, super.confirmacaoSenha, () {
      super.confirmacaoSenha = value;
    });
  }

  final _$_AlterarUsuarioActionController =
      ActionController(name: '_AlterarUsuario');

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_AlterarUsuarioActionController.startAction(
        name: '_AlterarUsuario.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_AlterarUsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSenha(String value) {
    final _$actionInfo = _$_AlterarUsuarioActionController.startAction(
        name: '_AlterarUsuario.changeSenha');
    try {
      return super.changeSenha(value);
    } finally {
      _$_AlterarUsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeConfirmacaoSenha(String value) {
    final _$actionInfo = _$_AlterarUsuarioActionController.startAction(
        name: '_AlterarUsuario.changeConfirmacaoSenha');
    try {
      return super.changeConfirmacaoSenha(value);
    } finally {
      _$_AlterarUsuarioActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
confirmacaoSenha: ${confirmacaoSenha}
    ''';
  }
}

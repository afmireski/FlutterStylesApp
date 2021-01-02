// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmeSenha.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfirmeSenha on _ConfirmeSenha, Store {
  final _$senhaAtom = Atom(name: '_ConfirmeSenha.senha');

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

  final _$_ConfirmeSenhaActionController =
      ActionController(name: '_ConfirmeSenha');

  @override
  void changeSenha(String value) {
    final _$actionInfo = _$_ConfirmeSenhaActionController.startAction(
        name: '_ConfirmeSenha.changeSenha');
    try {
      return super.changeSenha(value);
    } finally {
      _$_ConfirmeSenhaActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
senha: ${senha}
    ''';
  }
}

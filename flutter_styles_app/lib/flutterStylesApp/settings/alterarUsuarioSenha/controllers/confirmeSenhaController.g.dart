// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmeSenhaController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfirmeSenhaController on _ConfirmeSenhaController, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_ConfirmeSenhaController.isValid'))
      .value;

  final _$mostrarSenhaAtom =
      Atom(name: '_ConfirmeSenhaController.mostrarSenha');

  @override
  bool get mostrarSenha {
    _$mostrarSenhaAtom.reportRead();
    return super.mostrarSenha;
  }

  @override
  set mostrarSenha(bool value) {
    _$mostrarSenhaAtom.reportWrite(value, super.mostrarSenha, () {
      super.mostrarSenha = value;
    });
  }

  final _$_ConfirmeSenhaControllerActionController =
      ActionController(name: '_ConfirmeSenhaController');

  @override
  void changeMostrarSenha(bool value) {
    final _$actionInfo = _$_ConfirmeSenhaControllerActionController.startAction(
        name: '_ConfirmeSenhaController.changeMostrarSenha');
    try {
      return super.changeMostrarSenha(value);
    } finally {
      _$_ConfirmeSenhaControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mostrarSenha: ${mostrarSenha},
isValid: ${isValid}
    ''';
  }
}

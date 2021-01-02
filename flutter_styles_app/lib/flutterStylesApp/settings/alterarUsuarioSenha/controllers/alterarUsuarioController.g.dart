// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterarUsuarioController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlterarUsuarioController on _AlterarUsuarioController, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_AlterarUsuarioController.isValid'))
      .value;

  final _$mostrarSenhaAtom =
      Atom(name: '_AlterarUsuarioController.mostrarSenha');

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

  final _$_AlterarUsuarioControllerActionController =
      ActionController(name: '_AlterarUsuarioController');

  @override
  void changeMostrarSenha(bool value) {
    final _$actionInfo = _$_AlterarUsuarioControllerActionController
        .startAction(name: '_AlterarUsuarioController.changeMostrarSenha');
    try {
      return super.changeMostrarSenha(value);
    } finally {
      _$_AlterarUsuarioControllerActionController.endAction(_$actionInfo);
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

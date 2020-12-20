// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firstForm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FirstForm on _FirstFormBase, Store {
  final _$nomeAtom = Atom(name: '_FirstFormBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$emailAtom = Atom(name: '_FirstFormBase.email');

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

  final _$cpfAtom = Atom(name: '_FirstFormBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$dataNascimentoAtom = Atom(name: '_FirstFormBase.dataNascimento');

  @override
  DateTime get dataNascimento {
    _$dataNascimentoAtom.reportRead();
    return super.dataNascimento;
  }

  @override
  set dataNascimento(DateTime value) {
    _$dataNascimentoAtom.reportWrite(value, super.dataNascimento, () {
      super.dataNascimento = value;
    });
  }

  final _$_FirstFormBaseActionController =
      ActionController(name: '_FirstFormBase');

  @override
  void changeNome(String value) {
    final _$actionInfo = _$_FirstFormBaseActionController.startAction(
        name: '_FirstFormBase.changeNome');
    try {
      return super.changeNome(value);
    } finally {
      _$_FirstFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_FirstFormBaseActionController.startAction(
        name: '_FirstFormBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_FirstFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCPF(String value) {
    final _$actionInfo = _$_FirstFormBaseActionController.startAction(
        name: '_FirstFormBase.changeCPF');
    try {
      return super.changeCPF(value);
    } finally {
      _$_FirstFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDataNascimento(DateTime value) {
    final _$actionInfo = _$_FirstFormBaseActionController.startAction(
        name: '_FirstFormBase.changeDataNascimento');
    try {
      return super.changeDataNascimento(value);
    } finally {
      _$_FirstFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
email: ${email},
cpf: ${cpf},
dataNascimento: ${dataNascimento}
    ''';
  }
}

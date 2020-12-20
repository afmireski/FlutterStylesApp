// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondForm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SecondForm on _SecondForm, Store {
  final _$rgAtom = Atom(name: '_SecondForm.rg');

  @override
  String get rg {
    _$rgAtom.reportRead();
    return super.rg;
  }

  @override
  set rg(String value) {
    _$rgAtom.reportWrite(value, super.rg, () {
      super.rg = value;
    });
  }

  final _$orgaoEmissorRgAtom = Atom(name: '_SecondForm.orgaoEmissorRg');

  @override
  String get orgaoEmissorRg {
    _$orgaoEmissorRgAtom.reportRead();
    return super.orgaoEmissorRg;
  }

  @override
  set orgaoEmissorRg(String value) {
    _$orgaoEmissorRgAtom.reportWrite(value, super.orgaoEmissorRg, () {
      super.orgaoEmissorRg = value;
    });
  }

  final _$sexoAtom = Atom(name: '_SecondForm.sexo');

  @override
  int get sexo {
    _$sexoAtom.reportRead();
    return super.sexo;
  }

  @override
  set sexo(int value) {
    _$sexoAtom.reportWrite(value, super.sexo, () {
      super.sexo = value;
    });
  }

  final _$_SecondFormActionController = ActionController(name: '_SecondForm');

  @override
  void changeRg(String value) {
    final _$actionInfo =
        _$_SecondFormActionController.startAction(name: '_SecondForm.changeRg');
    try {
      return super.changeRg(value);
    } finally {
      _$_SecondFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeOrgaoEmissorRg(String value) {
    final _$actionInfo = _$_SecondFormActionController.startAction(
        name: '_SecondForm.changeOrgaoEmissorRg');
    try {
      return super.changeOrgaoEmissorRg(value);
    } finally {
      _$_SecondFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSexo(dynamic value) {
    final _$actionInfo = _$_SecondFormActionController.startAction(
        name: '_SecondForm.changeSexo');
    try {
      return super.changeSexo(value);
    } finally {
      _$_SecondFormActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
rg: ${rg},
orgaoEmissorRg: ${orgaoEmissorRg},
sexo: ${sexo}
    ''';
  }
}

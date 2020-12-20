// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormController on _FormControllerBase, Store {
  Computed<bool> _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_FormControllerBase.isValid'))
      .value;
  Computed<bool> _$firstFormIsValidComputed;

  @override
  bool get firstFormIsValid => (_$firstFormIsValidComputed ??= Computed<bool>(
          () => super.firstFormIsValid,
          name: '_FormControllerBase.firstFormIsValid'))
      .value;
  Computed<bool> _$secondFormIsValidComputed;

  @override
  bool get secondFormIsValid => (_$secondFormIsValidComputed ??= Computed<bool>(
          () => super.secondFormIsValid,
          name: '_FormControllerBase.secondFormIsValid'))
      .value;

  @override
  String toString() {
    return '''
isValid: ${isValid},
firstFormIsValid: ${firstFormIsValid},
secondFormIsValid: ${secondFormIsValid}
    ''';
  }
}

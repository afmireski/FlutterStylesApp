// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bannerController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BannerController on _BannerController, Store {
  final _$showAtom = Atom(name: '_BannerController.show');

  @override
  bool get show {
    _$showAtom.reportRead();
    return super.show;
  }

  @override
  set show(bool value) {
    _$showAtom.reportWrite(value, super.show, () {
      super.show = value;
    });
  }

  final _$_BannerControllerActionController =
      ActionController(name: '_BannerController');

  @override
  dynamic changeShow(bool value) {
    final _$actionInfo = _$_BannerControllerActionController.startAction(
        name: '_BannerController.changeShow');
    try {
      return super.changeShow(value);
    } finally {
      _$_BannerControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
show: ${show}
    ''';
  }
}

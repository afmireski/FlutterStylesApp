import 'package:flutter/foundation.dart';

class LocalController {
  ValueNotifier<String> endereco = ValueNotifier<String>(null);
  ValueNotifier<String> complemento = ValueNotifier<String>(null);
  ValueNotifier<String> cep = ValueNotifier<String>(null);

  void changeEndereco(String value) => endereco.value = value;

  void changeComplemento(String value) => complemento.value = value;

  void changeCep(String value) => cep.value = value;

  bool get isValid => validaCEP() == null && validaEndereco() == null;

  String validaEndereco() {
    if (endereco.value == null || endereco.value.trim().isEmpty) {
      return "Campo obrigatório!";
    } else {
      return null;
    }
  }

  String validaCEP() {
    if (cep.value == null || cep.value.trim().isEmpty) {
      return "Campo obrigatório!";
    } else {
      return null;
    }
  }
}
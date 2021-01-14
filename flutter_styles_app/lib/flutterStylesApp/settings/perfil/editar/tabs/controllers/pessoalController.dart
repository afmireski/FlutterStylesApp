import 'package:flutter/foundation.dart';
import 'package:flutter_styles_app/functions/validaDocumentos.dart';

class PessoalController {

  ValueNotifier<String> nome = ValueNotifier<String>(null);
  ValueNotifier<String> cpf = ValueNotifier<String>(null);
  ValueNotifier<int> valueSexo = ValueNotifier<int>(null);
  ValueNotifier<DateTime> dataNascimento = ValueNotifier<DateTime>(null);

  void changeNome(String value) => nome.value = value;

  void changeCpf(String value) => cpf.value = value;

  void changeSexo(int value) => valueSexo.value = value;

  void changeDataNascimento(DateTime value) => dataNascimento.value = value;

  bool get isValid => validaNome() == null && validaCpf() == null && validaSexo() == null && validaDataNascimento() == null;

  String validaNome() {
    if (nome.value == null || nome.value.trim().isEmpty) {
      return "Campo obrigatório!";
    } else if (nome.value.length < 3) {
      return "No mínimo 3 caracteres!";
    } else {
      return null;
    }
  }

  String validaCpf() {
    if (cpf.value == null || cpf.value.trim().isEmpty) {
      return "Campo obrigatório!";
    } else if (!validarCPF(cpf.value)) {
      return "CPF inválido!";
    } else {
      return null;
    }
  }

  String validaSexo() {
    if (valueSexo.value == null) {
      return "Campo obrigatório!";
    } else if (![0, 1, 2].contains(valueSexo.value)) {
      return "Opção inválida!";
    } else {
      return null;
    }
  }

  String validaDataNascimento() {
    if (dataNascimento.value == null) {
      return "Campo obrigatório!";
    } else {
      return null;
    }
  }

}
import 'package:flutter/foundation.dart';

class ProfissionalController {
  ValueNotifier<String> empresa = ValueNotifier<String>(null);
  ValueNotifier<String> cargo = ValueNotifier<String>(null);
  ValueNotifier<int> tempoDeServico = ValueNotifier<int>(null);
  ValueNotifier<double> salario = ValueNotifier<double>(null);

  void changeEmpresa(String value) => empresa.value = value;

  void changeCargo(String value) => cargo.value = value;

  void changeTempo(int value) => tempoDeServico.value = value;

  void changeSalario(double value) => salario.value = value;

  bool get isValid => validaEmpresa() == null;

  String validaEmpresa() {
    if (empresa.value == null || empresa.value.trim().isEmpty) {
      return 'Campo obrigatório!';
    } else {
      return null;
    }
  }
}
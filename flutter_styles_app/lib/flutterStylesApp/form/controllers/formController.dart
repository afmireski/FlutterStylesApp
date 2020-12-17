import 'package:flutter_styles_app/flutterStylesApp/form/controllers/models/firstScreen/firstForm.dart';
import 'package:mobx/mobx.dart';
part 'formController.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {

  FirstForm firstForm = FirstForm();


  ///FIRST FORM SCREEN VALIDATOR

  @computed
  bool get firstFormIsValid => validaNome() == null && validaEmail() == null
      && validaCPF() == null && validaDataNascimento() == null;

  String validaNome() {
    if (firstForm.nome == null || firstForm.nome.isEmpty) {
      return 'Campo obrigatório!';
    } else {
      return null;
    }
  }

  String validaEmail() {
    if (firstForm.email == null || firstForm.email.isEmpty) {
      return 'Campo obrigatório!';
    } else if (!firstForm.email.contains('@') || !firstForm.email.contains('.com')) {
      return 'Digite um e-mail válido!';
    } else {
      return null;
    }
  }

  String validaCPF() {
    ///TODO Função para validar CPF
    if (firstForm.cpf == null || firstForm.cpf.isEmpty) {
      return 'Campo obrigatório!';
    } else if (firstForm.cpf.length != 14) {
      return 'CPF inválido';
    } else {
      return null;
    }
  }

  String validaDataNascimento() {
    if (firstForm.dataNascimento == null) {
      return 'Campo obrigatório!';
    } else if (firstForm.dataNascimento.isAfter(DateTime.now())) {
      return 'Data inválida';
    } else {
      return null;
    }
  }
  ///FIRST FORM SCREEN VALIDATOR

}
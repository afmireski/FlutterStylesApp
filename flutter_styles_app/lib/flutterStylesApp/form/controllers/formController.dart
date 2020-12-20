
import 'package:flutter_styles_app/flutterStylesApp/form/models/firstScreen/firstForm.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/models/secondScreen/secondForm.dart';
import 'package:flutter_styles_app/functions/validaDocumentos.dart';
import 'package:mobx/mobx.dart';
part 'formController.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {

  FirstForm firstForm = FirstForm();
  SecondForm secondForm = SecondForm();

  @computed
  bool get isValid => firstFormIsValid && secondFormIsValid;

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
    if (firstForm.cpf == null || firstForm.cpf.isEmpty) {
      return 'Campo obrigatório!';
    } else if (!validarCPF(firstForm.cpf)) {
      return 'CPF inválido!';
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

  ///SECOND FORM SCREEN VALIDATOR

  @computed
  bool get secondFormIsValid => validaRg() == null && validaOrgaoEmissorRg() == null && validaSexo() == null;

  String validaRg() {
    if (secondForm.rg == null) {
      return 'Campo obrigatório!';
    } else if (secondForm.rg.length < 9) {
      return 'No mínimo 9 caracteres!';
    } else {
      return null;
    }
  }

  String validaOrgaoEmissorRg() {
    if (secondForm.orgaoEmissorRg == null) {
      return 'Campo obrigatório!';
    } else if (secondForm.orgaoEmissorRg.length < 3) {
      return 'No mínimo 3 caracteres!';
    } else {
      return null;
    }
  }

  String validaSexo() {
    if (secondForm.sexo == null) {
      return 'Campo obrigatório';
    } else if (![0, 1, 2].contains(secondForm.sexo)) {
      return 'Opção inválida';
    } else {
      return null;
    }
  }

}
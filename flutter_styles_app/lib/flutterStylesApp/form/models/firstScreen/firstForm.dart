import 'package:mobx/mobx.dart';
part 'firstForm.g.dart';

class FirstForm = _FirstFormBase with _$FirstForm;

abstract class _FirstFormBase with Store {

  @observable
  String nome;

  @action
  void changeNome(String value) => nome = value;

  @observable
  String email;

  @action
  void changeEmail(String value) => email = value;

  @observable
  String cpf;

  @action
  void changeCPF(String value) =>  cpf = value;

  @observable
  DateTime dataNascimento;

  @action
  void changeDataNascimento(DateTime value) => dataNascimento = value;
}
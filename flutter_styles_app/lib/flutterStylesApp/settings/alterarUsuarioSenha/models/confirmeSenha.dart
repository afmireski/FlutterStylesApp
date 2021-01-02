import 'package:mobx/mobx.dart';
part 'confirmeSenha.g.dart';

class ConfirmeSenha = _ConfirmeSenha with _$ConfirmeSenha;

abstract class _ConfirmeSenha with Store {
  @observable
  String senha;

  @action
  void changeSenha(String value) => senha = value;
}
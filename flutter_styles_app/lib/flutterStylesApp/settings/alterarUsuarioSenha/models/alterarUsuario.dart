import 'package:mobx/mobx.dart';
part 'alterarUsuario.g.dart';

class AlterarUsuario = _AlterarUsuario with _$AlterarUsuario;

abstract class _AlterarUsuario with Store {
  @observable
  String email;

  @observable
  String senha;

  @observable
  String confirmacaoSenha;

  @action
  changeEmail(String value) => email = value;

  @action
  changeSenha(String value) => senha = value;

  @action
  changeConfirmacaoSenha(String value) => confirmacaoSenha = value;


}
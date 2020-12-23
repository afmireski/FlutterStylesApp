import 'package:mobx/mobx.dart';
part 'loginModel.g.dart';

class LoginModel = _LoginModel with _$LoginModel;

abstract class _LoginModel with Store {
  @observable
  String email;

  @observable
  String password;

  @action
  void changeEmail(String value) => email = value;

  @action
  void changePassword(String value) => password = value;
}
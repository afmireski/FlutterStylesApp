
import 'package:mobx/mobx.dart';
part 'secondForm.g.dart';

class SecondForm = _SecondForm with _$SecondForm;

abstract class _SecondForm with Store {
  @observable
  String rg;

  @observable
  String orgaoEmissorRg;

  @observable
  int sexo;

  @action
  void changeRg(String value) => rg = value;

  @action
  void changeOrgaoEmissorRg(String value) => orgaoEmissorRg = value;

  @action
  changeSexo(dynamic value) => sexo = value;
}
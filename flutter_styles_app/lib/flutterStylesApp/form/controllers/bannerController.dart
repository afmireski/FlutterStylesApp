import 'package:mobx/mobx.dart';
part 'bannerController.g.dart';

class BannerController = _BannerController with _$BannerController;

abstract class _BannerController with Store {
  @observable
  bool show = true;

  @action
  changeShow(bool value) => show = value;

}
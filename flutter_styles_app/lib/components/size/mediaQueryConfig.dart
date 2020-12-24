import 'package:flutter/material.dart';

class MediaQueryConfig {
  final BuildContext _context;
  MediaQueryData _media;

  MediaQueryConfig(this._context) {
    _media = MediaQuery.of(_context);
  }

  Size returnSize() {
    ///Retorna as dimensões do dispositivo
    return _media.size;
  }

  double returnWidth({double percent = 1}) {
    ///Retorna a largura do dispositivo, multiplicada por uma porcentagem. Padrão 1 = 100% da largura;
    return returnSize().width * percent;
  }

  double returnHeight({double percent = 1}) {
    ///Retorna a altura do dispositivo, multiplicada por uma porcentagem. Padrão 1 = 100% da altura;
    return returnSize().height * percent;
  }

  Orientation returnDeviceOrientation() {
    return _media.orientation;
  }
}
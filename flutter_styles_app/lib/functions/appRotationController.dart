import 'package:flutter/services.dart';

void portraitModeOnly() {
  ///Set Preferred Orientation to portrait
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
}

void landscapeModeOnly() {
  ///Set Preferred Orientation to landspape
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeLeft]
  );
}

void enableAllRotationModes() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeLeft]
  );
}
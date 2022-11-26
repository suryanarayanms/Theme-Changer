import 'package:flutter/material.dart';

class ChangeTheme extends ChangeNotifier {
  bool currenttheme = true;
  // get _theme => currenttheme;

  void toggletheme() {
    currenttheme = !currenttheme;
    notifyListeners();
  }
}

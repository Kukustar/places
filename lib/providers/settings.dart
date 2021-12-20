import 'package:flutter/material.dart';

class SettingsModel extends ChangeNotifier {
  ThemeMode _appTheme = ThemeMode.system;

  ThemeMode get appTheme => _appTheme;

  set appTheme(ThemeMode theme) {
    _appTheme = theme;
    notifyListeners();
  }
}
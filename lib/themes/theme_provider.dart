import 'package:flutter_application_1/themes/dark_mode.dart';
import 'package:flutter_application_1/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = LightMode;

  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == DarkMode;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeData = _themeData == LightMode ? DarkMode : LightMode;
    notifyListeners();
  }
}

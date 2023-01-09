import 'package:flutter/material.dart';
import 'package:site_documentacao_api/themes/dark_theme.dart';
import 'package:site_documentacao_api/themes/light_theme.dart';

class ThemeController extends ChangeNotifier {
  static ThemeController instance = ThemeController();
  ThemeData? _themeMode = nsj_light_theme;
  ThemeData? get themeMode => _themeMode;

  bool get isLightTheme => _themeMode == nsj_dark_theme;

  switchTheme() {
    _themeMode = themeMode == nsj_dark_theme ? nsj_light_theme : nsj_dark_theme;
    notifyListeners();
  }
}

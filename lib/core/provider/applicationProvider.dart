import 'package:flutter/material.dart';

class AppPovider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  String currentLocal = "en";

  changeLanguage(String newLanguage) {
    if (currentLocal == newLanguage) return;
    currentLocal = newLanguage;
    notifyListeners();
  }

  chanageTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String background() {
    return isDark()
        ? "assets/images/dark_bg.png"
        : "assets/images/default_bg.png";
  }

  String sebha() {
    return isDark()
        ? "assets/images/head_sebha_dark.png"
        : "assets/images/head_sebha_logo.png";
  }

  String sebhaBody() {
    return isDark()
        ? "assets/images/body_sebha_dark.png"
        : "assets/images/body_sebha_logo.png";
  }

  String splashBackground() {
    return isDark()
        ? "assets/images/backgrounddark.png"
        : "assets/images/splashPage.png";
  }
}

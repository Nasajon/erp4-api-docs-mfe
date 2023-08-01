import 'package:flutter/material.dart';

class NsjText {
  static double screenMaxWidth = 650;

  set maxWidth(double maxWidth) {
    screenMaxWidth = maxWidth;
  }

  static TextStyle? titleExtraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? Theme.of(context).textTheme.titleLarge
        : Theme.of(context).textTheme.titleMedium;
  }

  static TextStyle? titleSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? Theme.of(context).textTheme.headlineLarge
        : Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle? titleMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? Theme.of(context).textTheme.displaySmall
        : Theme.of(context).textTheme.headlineSmall;
  }

  static TextStyle? titleLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? Theme.of(context).textTheme.displayMedium
        : Theme.of(context).textTheme.headlineMedium;
  }

  static TextStyle? titleExtraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 650
        ? Theme.of(context).textTheme.displayLarge
        : Theme.of(context).textTheme.headlineLarge;
  }

  static TextStyle? bodySmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 650
        ? Theme.of(context).textTheme.bodySmall
        : Theme.of(context).textTheme.bodySmall;
  }

  static TextStyle? bodyMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 650
        ? Theme.of(context).textTheme.bodyMedium
        : Theme.of(context).textTheme.bodySmall;
  }

  static TextStyle? bodyLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 650
        ? Theme.of(context).textTheme.bodyLarge
        : Theme.of(context).textTheme.bodyMedium;
  }
}

import 'package:flutter/material.dart';

class NsjPadding {
  static double screenMaxWidth = 650;

  set maxWidth(double maxWidth) {
    screenMaxWidth = maxWidth;
  }

  static EdgeInsets extraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.all(8.0)
        : const EdgeInsets.all(4.0);
  }

  static EdgeInsets small(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.all(16.0)
        : const EdgeInsets.all(8.0);
  }

  static EdgeInsets medium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.all(32.0)
        : const EdgeInsets.all(16.0);
  }

  static EdgeInsets large(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.all(64.0)
        : const EdgeInsets.all(32.0);
  }

  static EdgeInsets extraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.all(128.0)
        : const EdgeInsets.all(64.0);
  }

  static EdgeInsets verticalExtraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(vertical: 8.0)
        : const EdgeInsets.symmetric(vertical: 4.0);
  }

  static EdgeInsets verticalSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(vertical: 16.0)
        : const EdgeInsets.symmetric(vertical: 8.0);
  }

  static EdgeInsets verticalMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(vertical: 32.0)
        : const EdgeInsets.symmetric(vertical: 16.0);
  }

  static EdgeInsets verticalLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(vertical: 64.0)
        : const EdgeInsets.symmetric(vertical: 32.0);
  }

  static EdgeInsets verticalExtraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(vertical: 128.0)
        : const EdgeInsets.symmetric(vertical: 64.0);
  }

  static EdgeInsets horizontalExtraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(horizontal: 8.0)
        : const EdgeInsets.symmetric(horizontal: 4.0);
  }

  static EdgeInsets horizontalSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(horizontal: 16.0)
        : const EdgeInsets.symmetric(horizontal: 8.0);
  }

  static EdgeInsets horizontalMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(horizontal: 32.0)
        : const EdgeInsets.symmetric(horizontal: 16.0);
  }

  static EdgeInsets horizontalLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(horizontal: 64.0)
        : const EdgeInsets.symmetric(horizontal: 32.0);
  }

  static EdgeInsets horizontalExtraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.symmetric(horizontal: 128.0)
        : const EdgeInsets.symmetric(horizontal: 64.0);
  }

  static EdgeInsets bottomExtraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(bottom: 8.0)
        : const EdgeInsets.only(bottom: 4.0);
  }

  static EdgeInsets bottomSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(bottom: 16.0)
        : const EdgeInsets.only(bottom: 8.0);
  }

  static EdgeInsets bottomMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(bottom: 32.0)
        : const EdgeInsets.only(bottom: 16.0);
  }

  static EdgeInsets bottomLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(bottom: 64.0)
        : const EdgeInsets.only(bottom: 32.0);
  }

  static EdgeInsets bottomExtraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(bottom: 128.0)
        : const EdgeInsets.only(bottom: 64.0);
  }

  static EdgeInsets topExtraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(top: 8.0)
        : const EdgeInsets.only(top: 4.0);
  }

  static EdgeInsets topSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(top: 16.0)
        : const EdgeInsets.only(top: 8.0);
  }

  static EdgeInsets topMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(top: 32.0)
        : const EdgeInsets.only(top: 16.0);
  }

  static EdgeInsets topLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(top: 64.0)
        : const EdgeInsets.only(top: 32.0);
  }

  static EdgeInsets topExtraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(top: 128.0)
        : const EdgeInsets.only(top: 64.0);
  }

  static EdgeInsets leftExtraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(left: 8.0)
        : const EdgeInsets.only(left: 4.0);
  }

  static EdgeInsets leftSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(left: 16.0)
        : const EdgeInsets.only(left: 8.0);
  }

  static EdgeInsets leftMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(left: 32.0)
        : const EdgeInsets.only(left: 16.0);
  }

  static EdgeInsets leftLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(left: 64.0)
        : const EdgeInsets.only(left: 32.0);
  }

  static EdgeInsets leftExtraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(left: 128.0)
        : const EdgeInsets.only(left: 64.0);
  }

  static EdgeInsets rightExtraSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(right: 8.0)
        : const EdgeInsets.only(right: 4.0);
  }

  static EdgeInsets rightSmall(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(right: 16.0)
        : const EdgeInsets.only(right: 8.0);
  }

  static EdgeInsets rightMedium(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(right: 32.0)
        : const EdgeInsets.only(right: 16.0);
  }

  static EdgeInsets rightLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(right: 64.0)
        : const EdgeInsets.only(right: 32.0);
  }

  static EdgeInsets rightExtraLarge(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > screenMaxWidth
        ? const EdgeInsets.only(right: 128.0)
        : const EdgeInsets.only(right: 64.0);
  }
}

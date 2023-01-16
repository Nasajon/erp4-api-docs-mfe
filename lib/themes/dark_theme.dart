import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:site_documentacao_api/constants/colors.dart';

ThemeData nsj_dark_theme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.ptSansTextTheme(const TextTheme(
      headline1: TextStyle(
          fontSize: 56.0,
          fontWeight: FontWeight.bold,
          color: nsj_colors_primary_dark),
      headline2: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: nsj_colors_primary_dark),
      headline3: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: nsj_colors_primary_dark),
      subtitle1: TextStyle(
          fontSize: 16.0,
          color: nsj_colors_primary_dark,
          fontWeight: FontWeight.bold),
      subtitle2: TextStyle(
          fontSize: 12.0,
          color: nsj_colors_primary,
          fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 16.0, color: nsj_colors_text_dark),
      bodyText2: TextStyle(
          fontSize: 16.0,
          color: nsj_colors_text_dark,
          fontWeight: FontWeight.bold),
    )),
    appBarTheme: const AppBarTheme(
      backgroundColor: nsj_colors_background_dark,
      foregroundColor: nsj_colors_primary_dark,
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: nsj_colors_primary_dark),
    ));

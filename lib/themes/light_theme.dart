import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_documentacao_api/constants/colors.dart';

ThemeData nsj_light_theme = ThemeData(
    textTheme: GoogleFonts.ptSansTextTheme(const TextTheme(
      headline1: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: nsj_colors_primary),
      headline2: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: nsj_colors_primary),
      subtitle1: TextStyle(
          fontSize: 16.0,
          color: nsj_colors_primary,
          fontWeight: FontWeight.bold),
      subtitle2: TextStyle(
          fontSize: 12.0,
          color: nsj_colors_primary,
          fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 16.0, color: nsj_colors_text_primary),
      bodyText2: TextStyle(fontSize: 12.0, color: nsj_colors_text_primary),
    )),
    appBarTheme: const AppBarTheme(
      backgroundColor: nsj_colors_backgroung_primary,
      foregroundColor: nsj_colors_primary,
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: nsj_colors_primary),
    ));

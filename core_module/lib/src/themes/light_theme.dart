import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData nsjLightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: GoogleFonts.ptSansTextTheme(
      const TextTheme(
        displayLarge: TextStyle(
            fontSize: 56.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        displayMedium: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        displaySmall: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        headlineMedium: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        headlineSmall: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        titleMedium: TextStyle(
            fontSize: 16.0,
            color: AnaColors.darkBlue,
            fontWeight: FontWeight.bold),
        titleSmall: TextStyle(
            fontSize: 12.0,
            color: AnaColors.darkBlue,
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
          fontSize: 18.0,
          color: AnaColors.commonGrey,
        ),
        bodyMedium: TextStyle(
            fontSize: 16.0,
            color: AnaColors.commonGrey,
            fontWeight: FontWeight.bold),
        bodySmall: TextStyle(
            fontSize: 12.0,
            color: AnaColors.commonGrey,
            fontWeight: FontWeight.bold),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AnaColors.darkBlue,
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AnaColors.darkBlue),
    ));

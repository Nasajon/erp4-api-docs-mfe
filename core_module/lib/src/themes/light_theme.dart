import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData nsjLightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AnaColors.darkBlue,
    brightness: Brightness.light,
    textTheme: GoogleFonts.ptSansTextTheme(
      const TextTheme(
        displayLarge: TextStyle(
            fontSize: 57.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        displayMedium: TextStyle(
            fontSize: 45.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        displaySmall: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        headlineLarge: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        headlineMedium: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        headlineSmall: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        titleLarge: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: AnaColors.darkBlue),
        titleMedium: TextStyle(
            fontSize: 16.0,
            color: AnaColors.darkBlue,
            fontWeight: FontWeight.bold),
        titleSmall: TextStyle(
            fontSize: 14.0,
            color: AnaColors.darkBlue,
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
          fontSize: 16.0,
          color: AnaColors.commonGrey,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.0,
          color: AnaColors.commonGrey,
        ),
        bodySmall: TextStyle(
          fontSize: 12.0,
          color: AnaColors.commonGrey,
        ),
        labelLarge: TextStyle(
          fontSize: 14.0,
          color: AnaColors.commonGrey,
          fontWeight: FontWeight.bold,
        ),
        labelMedium: TextStyle(
          fontSize: 12.0,
          color: AnaColors.commonGrey,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: TextStyle(
          fontSize: 11.0,
          color: AnaColors.darkBlue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AnaColors.darkBlue,
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AnaColors.darkBlue),
    ));

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData nsjDarkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.ptSansTextTheme(
      const TextTheme(
        displayLarge: TextStyle(
            fontSize: 56.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 69, 110, 161)),
        displayMedium: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 69, 110, 161)),
        displaySmall: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 69, 110, 161)),
        headlineMedium: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 69, 110, 161)),
        headlineSmall: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 69, 110, 161)),
        titleMedium: TextStyle(
            fontSize: 16.0,
            color: Color.fromARGB(255, 69, 110, 161),
            fontWeight: FontWeight.bold),
        titleSmall: TextStyle(
            fontSize: 12.0,
            color: Color.fromARGB(255, 69, 110, 161),
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(
          fontSize: 18.0,
          color: Color.fromARGB(255, 230, 230, 230),
        ),
        bodyMedium: TextStyle(
            fontSize: 16.0,
            color: Color.fromARGB(255, 230, 230, 230),
            fontWeight: FontWeight.bold),
        bodySmall: TextStyle(
            fontSize: 12.0,
            color: Color.fromARGB(255, 230, 230, 230),
            fontWeight: FontWeight.bold),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 69, 110, 161),
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 69, 110, 161)),
    ));

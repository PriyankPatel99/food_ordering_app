import 'package:flutter/material.dart';

class MyThemes {
  static final DarkTheme = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black,
    primaryColorDark: Colors.white,
    cardColor: const Color(0xFf1F1F30),
    colorScheme: const ColorScheme.dark(),
  );
  static final LightTheme = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    primaryColorDark: Colors.black,
    cardColor: const Color(0xFFF8F8FA),
    colorScheme: const ColorScheme.light(),
  );
}

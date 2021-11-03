import 'package:flutter/material.dart';

class MyThemes {
  static final DarkTheme = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black,
    primaryColorDark: Colors.white,
    cardColor: Color(0xFf1F1F30),
    colorScheme: ColorScheme.dark(),
  );
  static final LightTheme = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    primaryColorDark: Colors.black,
    cardColor: Color(0xFFF8F8FA),
    colorScheme: ColorScheme.light(),
  );
}

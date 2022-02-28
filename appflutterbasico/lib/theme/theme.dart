import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 241, 59, 171);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primary, 
      appBarTheme: const AppBarTheme(color: primary, elevation: 0)
  );
}

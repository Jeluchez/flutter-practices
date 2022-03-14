import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Primary color
        primaryColor: primary,

        // App bar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 5
        )
  );

   static final ThemeData darkTheme = ThemeData.dark().copyWith(
        // Primary color
        primaryColor: primary,

        // App bar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 5
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20)
  );

}
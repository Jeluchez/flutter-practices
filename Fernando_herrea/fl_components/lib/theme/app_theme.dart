import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // Primary color
        primaryColor: primary,

        // App bar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 5
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        ),

        // ElevateButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            shape: const StadiumBorder(),
            elevation: 0
          ),
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
        scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: AppTheme.primary),
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        )
        
  );

}
import 'package:flutter/material.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFBFBFB),
    appBarTheme: const AppBarTheme(
      color: Color(0xFFFAFAFA),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      background: Color(0xFFFBFBFB),
      primary: Color(0xFFA8A8AA),
      onPrimary: Colors.white,
      secondary: Color(0xFF4CA6A8),
      tertiary: Colors.white,
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF6A6A6A),
        fontSize: 12.0,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF6A6A6A),
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF1A1D1E),
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF151313),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF151313),
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF1A1D1E),
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF1A1D1E),
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF6A6A6A),
        fontSize: 10.0,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF1A1D1E),
        fontSize: 34.0,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF1A1D1E),
        fontSize: 16.0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF000000),
    appBarTheme: const AppBarTheme(
      color: Color(0xFF303030),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF000000),
      primary: Color(0xFFA8A8AA),
      onPrimary: Colors.white,
      secondary: Color(0xFF4CA6A8),
      tertiary: Color(0xFF303030),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFFD2D2D2),
        fontSize: 12.0,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF959595),
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFFE5E2E1),
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFFEAECEC),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFFEAECEC),
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFFE5E2E1),
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFFE5E2E1),
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF959595),
        fontSize: 10.0,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFFE5E2E1),
        fontSize: 34.0,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Color(0xFF959595),
        fontSize: 16.0,
      ),
    ),
  );
}
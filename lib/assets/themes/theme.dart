import 'package:flutter/material.dart';

import '../colors/colors.dart';

abstract class AppTheme {
  static ThemeData theme() => ThemeData(
        scaffoldBackgroundColor: bGrey,
        fontFamily: 'Inter',
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: white,
          titleTextStyle: bodyMedium,
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xFF0C161D)),
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        unselectedWidgetColor: Colors.black,
        textTheme: const TextTheme(
          displayLarge: displayLarge,
          displayMedium: displayMedium,
          displaySmall: displaySmall,
          headlineMedium: headlineMedium,
          headlineSmall: headlineSmall,
          titleLarge: titleLarge,
          bodyLarge: bodyLarge,
          bodyMedium: bodyMedium,
          titleMedium: titleMedium,
          titleSmall: titleSmall,
          bodySmall: bodySmall,
          labelLarge: labelLarge,
          labelSmall: labelSmall,
        ),
        colorScheme: const ColorScheme(
          background: white,
          brightness: Brightness.light,
          primary: blue,
          secondary: blue,
          error: red,
          surface: blue,
          onPrimary: blue,
          onSecondary: blue,
          onBackground: blue,
          onError: red,
          onSurface: blue,
        ),
      );

  // Fonts
  static const displayLarge = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: dark,
  );
  static const displayMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: dark,
  );
  static const displaySmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: dark,
  );
  static const headlineMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: dark,
  );
  static const headlineSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: greyText,
  );
  static const titleLarge = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: dark,
  );

  static const titleLargest = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: dark,
  );
  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: dark,
  );

  static const bodyMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: dark,
  );

  static const titleMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: dark,
  );

  static const titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: white,
  );

  static const bodySmall = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: dark,
  );

  static const labelSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: greyText,
    letterSpacing: -0.1,
  );

  static const labelSmaller = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: white,
    letterSpacing: -0.1,
  );

  static const labelMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: greyText,
    letterSpacing: -0.1,
  );

  static const labelLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: greyText,
    letterSpacing: -0.1,
  );

  static const labelLargest = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: dark,
    letterSpacing: -0.1,
  );
}

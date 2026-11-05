import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();
  static const double screenPadding = 16;
  static const double radius = 16;

  static ThemeData get light {
    const titleLarge = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    );
    const titleMedium = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    );
    const bodyLarge = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.gray,
    );
    OutlineInputBorder border(Color color) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(width: 2, color: color),
        );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.blue,
        primary: AppColors.blue,
        surface: AppColors.white,
        error: AppColors.red,
      ),
      textTheme: const TextTheme(
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        bodyLarge: bodyLarge,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.blue,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          overlayColor: Colors.transparent,
          elevation: 0,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.white,
        hintStyle: bodyLarge,
        errorStyle: const TextStyle(color: AppColors.red),
        contentPadding: const EdgeInsets.all(16),
        border: border(AppColors.gray),
        enabledBorder: border(AppColors.gray),
        focusedBorder: border(AppColors.gray),
        errorBorder: border(AppColors.red),
        focusedErrorBorder: border(AppColors.red),
      ),
    );
  }
}

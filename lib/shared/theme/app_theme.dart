import 'package:flutter/material.dart';

// Єдина кольорова палітра застосунку
class AppColors {
  static const Color primary = Color(0xFF1565C0);
  static const Color background = Color(0xFFF3F6FA);
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF2E7D32);
}

// Стандартні відступи і радіуси
class AppSizes {
  static const double padding = 16;
  static const double radius = 12;
}

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    scaffoldBackgroundColor: AppColors.background,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radius),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData appThemeData() => ThemeData(
      fontFamily: AppFonts.gilroy,
      colorScheme:
          ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor);
}

class AppFonts {
  const AppFonts._();
  static const String gilroy = "Gilroy";
  static const String overpassMono = "OverpassMono";
  static const String cirka = "Cirka";
}

class AppColors {
  const AppColors._();
  static const Color scaffoldBackgroundColor =
      Color(0xFF0a0a0a); // Dark background
  // static const Color scaffoldBackgroundColor =
  //     Color(0xFF000000); // Dark background

  static const Color greyTextColor = Color(0xFFe6e6e6);
  static const Color screen2GreyTextColor = Color(0xFF555555);
  static const Color bottomShadowColor = Color(0xFF878787);
  static const Color rightShadowColor = Color(0xFFdcdcdc);
  static const Color categoryBorderColor = Color(0xFF1d1d1d);
  static const Color splashColor = Color.fromARGB(255, 33, 33, 33);

  static const Color redColor = Color.fromARGB(255, 255, 0, 0);
  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);
}

const animationDuration = 800;

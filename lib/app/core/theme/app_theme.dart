import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio2/app/core/color/colors.dart';
import 'package:portfolio2/app/core/color/gradient_colors.dart';


class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      backgroundColor: lightBackgroundColor,
      scaffoldBackgroundColor: lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(
        backgroundColor: lightBackgroundColor,
      ),
      textTheme: TextTheme(labelLarge: TextStyle(color: lightTextColor)));

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    backgroundColor: darkBackgroundColor,
    scaffoldBackgroundColor: const Color(0xFF00040F),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      button: TextStyle(color: darkTextColor),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: darkBackgroundColor,
    ),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor =>
      brightness == Brightness.light ? navLightColor : navDarkColor;

  Color get textColor =>
      brightness == Brightness.light ? textLightcolor : textDarkColor;

  Color get secondaryColor => const Color(0xFFFE53BB);

  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBack;

  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}

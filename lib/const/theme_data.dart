import 'package:flutter/material.dart';
import 'package:theme/const/app_colors.dart';

class Style {
  static ThemeData themeData(
      {required bool isDarkMode, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkMode
          ? AppColors.darkScaffoldColor
          : AppColors.lightScaffoldColor,
       cardColor: isDarkMode
          ? const Color.fromARGB(255, 13, 6, 37)
          : AppColors.lightCardColor,
      brightness: isDarkMode ? Brightness.dark : Brightness.light, // text 
    );
  }
}

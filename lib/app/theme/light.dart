import 'package:flutter/material.dart';
import 'package:paylony_pos/app/styles/styles.dart';

final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffFBFBFB),
    primaryColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
    ),
    textSelectionTheme: const TextSelectionThemeData(
        selectionColor: AppColors.textPrimaryColor));

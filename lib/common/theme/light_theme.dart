import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';
import 'package:whats_app_messenger/common/utils/color.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: Coloors.backgroundLight,
      scaffoldBackgroundColor: Coloors.backgroundLight,
      extensions: [CustomThemeExtension.lightMode],
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Coloors.greenLight,
            foregroundColor: Coloors.backgroundLight,
            elevation: 0,
            shadowColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Coloors.backgroundLight,
          modalBackgroundColor: Coloors.backgroundLight,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)))));
}

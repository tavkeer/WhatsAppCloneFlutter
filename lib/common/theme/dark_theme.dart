import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';
import 'package:whats_app_messenger/common/utils/color.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      backgroundColor: Coloors.backgroundDark,
      scaffoldBackgroundColor: Coloors.backgroundDark,
      extensions: [CustomThemeExtension.darkMode],
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Coloors.greenDark,
            foregroundColor: Coloors.backgroundDark,
            elevation: 0,
            shadowColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Coloors.greyBackground,
          modalBackgroundColor: Coloors.greyBackground,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)))));
}

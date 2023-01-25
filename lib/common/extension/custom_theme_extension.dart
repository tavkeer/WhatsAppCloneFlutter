// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/utils/color.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
      circleImageColor: Color(0xFF25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langButtonColor: Color(0xFFF7F8FA),
      langButtonHighlightColor: Color(0xFFE8E8ED),
      photoIconBgColor: Color(0xFFF0F2F3),
      photoIconColor: Color(0xFF9DAAB3),
      authAppBarTextColor: Coloors.greenLight);

  static const darkMode = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langButtonColor: Color(0xFF182229),
      langButtonHighlightColor: Color(0xFF09141A),
      photoIconBgColor: Color(0xFF283339),
      photoIconColor: Color(0xFF61717B),
      authAppBarTextColor: Color(0xFFE9EDEF));
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langButtonColor;
  final Color? langButtonHighlightColor;
  final Color? authAppBarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;
  const CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langButtonColor,
      this.langButtonHighlightColor,
      this.authAppBarTextColor,
      this.photoIconBgColor,
      this.photoIconColor});

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? greyColor,
    Color? blueColor,
    Color? langButtonColor,
    Color? langButtonHighlightColor,
    Color? authAppBarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      blueColor: blueColor ?? this.blueColor,
      greyColor: greyColor ?? this.greyColor,
      langButtonColor: langButtonColor ?? this.langButtonColor,
      langButtonHighlightColor:
          langButtonHighlightColor ?? this.langButtonHighlightColor,
      authAppBarTextColor: authAppBarTextColor ?? this.authAppBarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langButtonColor: Color.lerp(langButtonColor, other.langButtonColor, t),
      langButtonHighlightColor: Color.lerp(
          langButtonHighlightColor, other.langButtonHighlightColor, t),
      authAppBarTextColor:
          Color.lerp(authAppBarTextColor, other.authAppBarTextColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
    );
  }
}

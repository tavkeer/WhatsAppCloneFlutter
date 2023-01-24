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
      langButtonHighlightColor: Color(0xFFE8E8ED));

  static const darkMode = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langButtonColor: Color(0xFF182229),
      langButtonHighlightColor: Color(0xFF09141A));
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langButtonColor;
  final Color? langButtonHighlightColor;

  const CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langButtonColor,
      this.langButtonHighlightColor});

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? greyColor,
    Color? blueColor,
    Color? langButtonColor,
    Color? langButtonHighlightColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      blueColor: blueColor ?? this.blueColor,
      greyColor: greyColor ?? this.greyColor,
      langButtonColor: langButtonColor ?? this.langButtonColor,
      langButtonHighlightColor:
          langButtonHighlightColor ?? this.langButtonHighlightColor,
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
    );
  }
}

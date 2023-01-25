// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';
import 'package:whats_app_messenger/common/utils/color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final double? fontSize;
  final bool? autoFocus;
  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.readOnly,
    this.textAlign,
    this.keyboardType,
    this.prefixText,
    this.onTap,
    this.suffixIcon,
    this.onChanged,
    this.fontSize,
    this.autoFocus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onChanged: onChanged,
      autofocus: autoFocus ?? false,
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          prefixText: prefixText,
          hintStyle: TextStyle(
            color: context.theme.greyColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Coloors.greenDark),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Coloors.greenDark, width: 2),
          ),
          suffixIcon: suffixIcon),
    );
  }
}

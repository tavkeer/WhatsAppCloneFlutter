import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Read our",
              style: TextStyle(
                color: context.theme.greyColor,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: ' Privacy Policy. ',
                  style: TextStyle(
                    color: context.theme.blueColor,
                  ),
                ),
                const TextSpan(text: 'Tap "Agree and Continue" to accept th'),
                TextSpan(
                  text: 'Terms and conditions',
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                )
              ])),
    );
  }
}

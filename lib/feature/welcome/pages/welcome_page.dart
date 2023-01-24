// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';
import 'package:whats_app_messenger/common/widgets/custom_elevatee_button.dart';
import 'package:whats_app_messenger/feature/welcome/widgets/language_button.dart';
import 'package:whats_app_messenger/feature/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
            child: Image.asset('lib/assets/circle.png',
                color: context.theme.circleImageColor),
          ),
        )),
        SizedBox(
          height: 40,
        ),
        Expanded(
            child: Column(
          children: [
            Text(
              'Welcome to WhatsApp',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            PrivacyAndTerms(),
            CustomElevatedButton(
              onPressed: () {},
              text: "AGREE AND CONTINUE",
            ),
            SizedBox(
              height: 50,
            ),
            LanguageButton()
          ],
        )),
      ],
    ));
  }
}

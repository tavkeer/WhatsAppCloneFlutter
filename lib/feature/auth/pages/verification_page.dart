// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';
import 'package:whats_app_messenger/common/widgets/custom_icon_button.dart';
import 'package:whats_app_messenger/feature/auth/widgets/custom_text_field.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage(
      {Key? key, required this.verificationId, required this.phoneNumber})
      : super(key: key);
  final String verificationId;
  final String phoneNumber;

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late TextEditingController codeController;
  @override
  void initState() {
    codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Verify your number',
          style: TextStyle(color: context.theme.authAppBarTextColor),
        ),
        centerTitle: true,
        actions: [CustomIconButton(onTap: () {}, icon: Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style:
                        TextStyle(color: context.theme.greyColor, height: 1.5),
                    children: [
                      TextSpan(
                          text:
                              "You've tried to register +917006848483,wait before requesting an SMS or call with your code.  "),
                      TextSpan(
                          text: "Wrong number?",
                          style: TextStyle(color: context.theme.blueColor)),
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: CustomTextField(
                controller: codeController,
                hintText: '_ _ _  _ _ _',
                fontSize: 30,
                autoFocus: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter 6-digit code",
              style: TextStyle(color: context.theme.greyColor),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.message,
                  color: context.theme.greyColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Resend SMS',
                  style: TextStyle(color: context.theme.greyColor),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: context.theme.blueColor!.withOpacity(0.2),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: context.theme.greyColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Call Me',
                  style: TextStyle(color: context.theme.greyColor),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

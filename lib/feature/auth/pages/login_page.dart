// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:whats_app_messenger/common/extension/custom_theme_extension.dart';
import 'package:whats_app_messenger/common/helper/showalert_dialog.dart';
import 'package:whats_app_messenger/common/utils/color.dart';
import 'package:whats_app_messenger/common/widgets/custom_elevatee_button.dart';
import 'package:whats_app_messenger/common/widgets/custom_icon_button.dart';
import 'package:whats_app_messenger/feature/auth/controller/auth_controller.dart';
import 'package:whats_app_messenger/feature/auth/widgets/custom_text_field.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    countryNameController = TextEditingController(text: "India");
    countryCodeController = TextEditingController(text: '91');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryCodeController.dispose();
    countryNameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  sendCodeToPhone() {
    final phoneNumber = phoneNumberController.text;
    final countryName = countryNameController.text;
    final countryCode = countryCodeController.text;
    if (phoneNumber.isEmpty) {
      showAlertDialog(
          context: context, message: 'Please enter your phone number');
    } else if (phoneNumber.length < 9) {
      showAlertDialog(
          context: context,
          message:
              "The Phone number you entered is too short for the country: $countryName. \n\n Include your area code if you haven't?");
    } else if (phoneNumber.length > 10) {
      return showAlertDialog(
          context: context,
          message: 'The phone number you entered is too long');
    }

    //request for verification code

    ref.read(authControllerProvider).sendSmsCode(
          context: context,
          phoneNumber: "+$countryCode$phoneNumber",
        );
  }

  showCountryCodePicker() {
    showCountryPicker(
        context: context,
        showPhoneCode: true,
        favorite: ['IN'],
        countryListTheme: CountryListThemeData(
          bottomSheetHeight: 600,
          backgroundColor: Theme.of(context).colorScheme.background,
          flagSize: 22,
          textStyle: TextStyle(color: context.theme.greyColor),
          inputDecoration: InputDecoration(
              labelStyle: TextStyle(
                color: context.theme.greyColor,
              ),
              hintText: "Search country code or name",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: context.theme.greyColor!.withOpacity(0.2),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloors.greyDark,
                ),
              ),
              prefixIcon: Icon(
                Icons.language,
                color: Coloors.greenDark,
              )),
          borderRadius: BorderRadius.circular(20),
        ),
        onSelect: (country) {
          countryNameController.text = country.name;
          countryCodeController.text = country.phoneCode;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "Enter your Phone",
          style: TextStyle(color: context.theme.authAppBarTextColor),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            icon: Icons.more_vert,
            onTap: () {},
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "WhatsApp will need to verify your phone number. ",
                style: TextStyle(color: context.theme.greyColor, height: 1.5),
                children: [
                  TextSpan(
                      text: "What's my number?",
                      style: TextStyle(color: context.theme.blueColor))
                ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextField(
              onTap: showCountryCodePicker,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: Coloors.greenDark,
              ),
              readOnly: true,
              controller: countryNameController,
            )),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              SizedBox(
                width: 70,
                child: CustomTextField(
                  onTap: showCountryCodePicker,
                  controller: countryCodeController,
                  prefixText: '+',
                  readOnly: true,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomTextField(
                controller: phoneNumberController,
                hintText: "phone number",
                textAlign: TextAlign.left,
                keyboardType: TextInputType.number,
              ))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Carrier charges may apply",
          style: TextStyle(color: context.theme.greyColor),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: sendCodeToPhone,
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}

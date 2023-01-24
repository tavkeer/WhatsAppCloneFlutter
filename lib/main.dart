// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/theme/dark_theme.dart';
import 'package:whats_app_messenger/common/theme/light_theme.dart';
import 'package:whats_app_messenger/feature/auth/pages/login_page.dart';
import 'package:whats_app_messenger/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp Messenger',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
        home: LoginPage());
  }
}

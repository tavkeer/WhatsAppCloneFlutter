// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_messenger/common/routes/routes.dart';
import 'package:whats_app_messenger/common/theme/dark_theme.dart';
import 'package:whats_app_messenger/common/theme/light_theme.dart';
import 'package:whats_app_messenger/feature/welcome/pages/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: WelcomePage(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Config/PagePath.dart';
import 'package:sampark_chat_app_24/Config/Themes.dart';
import 'package:sampark_chat_app_24/Pages/Auth/AuthPage.dart';
import 'package:sampark_chat_app_24/Pages/HomePage/HomePage.dart';
import 'package:sampark_chat_app_24/Pages/SplashPage/SplashPage.dart';
import 'package:sampark_chat_app_24/Pages/Welcome/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sampark',
      theme: lightTheme,
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}

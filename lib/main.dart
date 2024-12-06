import 'package:flutter/material.dart';
import 'package:sampark_chat_app_24/Config/Themes.dart';
import 'package:sampark_chat_app_24/Pages/SplashPage/SplashPage.dart';
import 'package:sampark_chat_app_24/Pages/Welcome/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sampark',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const WelcomePage(),
    );
  }
}

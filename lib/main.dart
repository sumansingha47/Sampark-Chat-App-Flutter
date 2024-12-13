import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Config/PagePath.dart';
import 'package:sampark_chat_app_24/Config/Themes.dart';
import 'package:sampark_chat_app_24/Pages/Auth/AuthPage.dart';
import 'package:sampark_chat_app_24/Pages/Home/HomePage.dart';
import 'package:sampark_chat_app_24/Pages/SplashPage/SplashPage.dart';
import 'package:sampark_chat_app_24/Pages/Welcome/WelcomePage.dart';
import 'package:sampark_chat_app_24/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const AuthPage(),
    );
  }
}

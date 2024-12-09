import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Pages/Auth/AuthPage.dart';
import 'package:sampark_chat_app_24/Pages/Chat/ChatPage.dart';
import 'package:sampark_chat_app_24/Pages/Home/HomePage.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => const AuthPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/homePage",
    page: () => const HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
      name: "/chatPage",
      page: () => const ChatPage(),
      transition: Transition.rightToLeft),
];
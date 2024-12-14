import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Pages/Auth/AuthPage.dart';
import 'package:sampark_chat_app_24/Pages/Chat/ChatPage.dart';
import 'package:sampark_chat_app_24/Pages/Home/HomePage.dart';
import 'package:sampark_chat_app_24/Pages/Profile/ProfilePage.dart';
import 'package:sampark_chat_app_24/Pages/Profile/UpdateProfile.dart';

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
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/profilePage",
    page: () => const ProfilePage(),
  ),
  GetPage(
    name: "/updateProfilePage",
    page: () => const UpdateProfile(),
    transition: Transition.rightToLeft,
  ),
];

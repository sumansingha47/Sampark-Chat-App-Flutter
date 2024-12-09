import 'package:flutter/material.dart';
import 'package:sampark_chat_app_24/Pages/Auth/Widgets/AuthPageBody.dart';
import 'package:sampark_chat_app_24/Pages/Welcome/Widgets/WelcomeHeading.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const Welcomeheading(),
                const SizedBox(height: 40),
                const AuthPageBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

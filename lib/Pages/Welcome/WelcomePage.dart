import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampark_chat_app_24/Config/Images.dart';
import 'package:sampark_chat_app_24/Config/Strings.dart';
import 'package:sampark_chat_app_24/Pages/Welcome/Widgets/WelcomeBody.dart';
import 'package:sampark_chat_app_24/Pages/Welcome/Widgets/WelcomeHeading.dart';
import 'package:sampark_chat_app_24/Pages/Welcome/Widgets/WelcomeSliderButton.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Welcomeheading(),
              const WelcomeBody(),
              const WelcomeSliderButton(),
            ],
          ),
        ),
      ),
    );
  }
}

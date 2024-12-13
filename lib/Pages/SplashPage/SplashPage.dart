import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Config/Colors.dart';
import 'package:sampark_chat_app_24/Config/Images.dart';
import 'package:sampark_chat_app_24/Config/Strings.dart';
import 'package:sampark_chat_app_24/Controller/SplashController.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(AssetsImage.appIconSVG),
          ),
          const SizedBox(height: 10),
          Text(
            AppString.appName,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: dPrimaryColor),
          ),
        ],
      ),
    );
  }
}

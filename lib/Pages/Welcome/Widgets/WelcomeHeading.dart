import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampark_chat_app_24/Config/Strings.dart';

import '../../../Config/Images.dart';

class Welcomeheading extends StatelessWidget {
  const Welcomeheading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AssetsImage.appIconSVG),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}

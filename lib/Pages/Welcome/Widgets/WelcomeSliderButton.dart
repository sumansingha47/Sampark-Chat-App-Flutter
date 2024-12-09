import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Config/Images.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../Config/Strings.dart';

class WelcomeSliderButton extends StatelessWidget {
  const WelcomeSliderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideAction(
          onSubmit: () {
            Get.offAllNamed("/authPage");
          },
          sliderButtonIcon: Container(
            width: 25,
            height: 25,
            child: SvgPicture.asset(
              AssetsImage.plugSVG,
              width: 25,
            ),
          ),
          text: WelcomePageString.slideToStart,
          textStyle: Theme.of(context).textTheme.headlineSmall,
          animationDuration: const Duration(seconds: 1),
          sliderRotate: true,
          submittedIcon: SvgPicture.asset(
            AssetsImage.connectSVG,
            width: 25,
          ),
          innerColor: Theme.of(context).colorScheme.primary,
          outerColor: Theme.of(context).colorScheme.primaryContainer,
        ),
      ],
    );
  }
}

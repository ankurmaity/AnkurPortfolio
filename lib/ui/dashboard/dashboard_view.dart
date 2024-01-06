import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ankur_portfolio/ui/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/style.dart';
import 'dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ColorTheme.bgColor,
        appBar: AppBar(
          backgroundColor: ColorTheme.bgColor,
          toolbarHeight: 80,
          titleSpacing: 100,
          title: Row(
            children: [
              Text("Portfolio", style: Style.appBarTitleStyle()),
              const Spacer(),
              Text("Home", style: Style.appBarMenuStyle()),
              const SizedBox(width: 30),
              Text("About", style: Style.appBarMenuStyle()),
              const SizedBox(width: 30),
              Text("Portfolio", style: Style.appBarMenuStyle()),
              const SizedBox(width: 30),
              Text("Contact", style: Style.appBarMenuStyle()),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: size.height * 0.3,
            left: size.width * 0.2,
            right: size.width * 0.2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello, It\'s Me', style: Style.theme1()),
              const SizedBox(height: 20),
              Text('Ankur Maity', style: Style.theme2()),
              const SizedBox(height: 20),
              Row(children: [
                Text('And I\'m a ', style: Style.theme1()),
                AnimatedTextKit(
                  animatedTexts: [
                    textAnimator('Mobile Developer'),
                    textAnimator('Techie'),
                    textAnimator('Mentor'),
                  ],
                  pause: const Duration(milliseconds: 1000),
                  repeatForever: true,
                  isRepeatingAnimation: true,

                  /*displayFullTextOnTap: true,
                    stopPauseOnTap: true*/
                )
              ]),
              const SizedBox(height: 5),
              SizedBox(
                  width: size.width * 0.5,
                  child: Text(
                    'With over 8 years in the dynamic realm of mobile development, '
                    'I specialize in Android and Flutter and thrive in transforming '
                    'creative ideas into functional, user-centric solutions. My '
                    'journey has been marked by a commitment to staying ahead of '
                    'industry trends and a dedication to continuous learning.',
                    style: Style.body(),
                    textAlign: TextAlign.justify,
                  )),
            ],
          ),
        ));
  }

  textAnimator(String text) {
    return TyperAnimatedText(text,
        textStyle: Style.theme1(color: ColorTheme.color12),
        speed: const Duration(milliseconds: 100));
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/constant.dart';
import '../sections/social_media_section.dart';
import '../utils/color_constants.dart';
import '../utils/style.dart';
import '../sections/skills_section.dart';
import '../utils/utils.dart';
import 'about_controller.dart';

class AboutView extends GetWidget<AboutController> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  late AboutController controller;

  AboutView({super.key}) {
    controller = Get.put(AboutController());
  }

  var skills = [
    'Android',
    'Flutter',
    'System Design',
    'Product Design',
    'Kotlin',
    'Dart'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    controller.screenWidth = size.width;
    return Container(width: controller.screenWidth * 0.5, child: aboutMe());
  }

  aboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello, It\'s Me', style: Style.abhayaLibre()),
        const SizedBox(height: 20),
        Text('Ankur Maity', style: Style.bungee()),
        const SizedBox(height: 20),
        Row(children: [
          Text('And I\'m a ', style: Style.abhayaLibre()),
          AnimatedTextKit(
            animatedTexts: [
              textAnimator('Mobile Developer'),
              textAnimator('Techie'),
              textAnimator('Mentor'),
            ],
            pause: const Duration(milliseconds: 1000),
            repeatForever: true,
            isRepeatingAnimation: true,
          )
        ]),
        const SizedBox(height: 5),
        SizedBox(
            child: Text(
          'With over 10 years in the dynamic realm of mobile development, '
          'I specialize in Android and Flutter and thrive in transforming '
          'creative ideas into functional, user-centric solutions. My '
          'journey has been marked by a commitment to staying ahead of '
          'industry trends and a dedication to continuous learning.',
          style: Style.body(),
          textAlign: TextAlign.justify,
        )),
        const SizedBox(height: 15),
        Center(
          child: SizedBox(
            height: 30,
            child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                      Colors.black,
                      Colors.transparent,
                    ],
                    stops: [0.0, 0.08, 0.92, 1.0],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn,
                child: InfiniteSkillsTicker(
                  skills: skills,
                )),
          ),
        ),
        const SocialMedia(),
        const SizedBox(height: 15),
        MaterialButton(
          onPressed: () {
            Utils.instance.launchWebUrl(Constant.resume);
          },
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          hoverColor: ColorTheme.color12_hover,
          elevation: 5,
          hoverElevation: 2,
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          color: ColorTheme.color12,
          child: Text('Download CV',
              style: Style.montserrat(color: ColorTheme.bgColor)),
        )
      ],
    );
  }

  textAnimator(String text) {
    return TyperAnimatedText(text,
        textStyle: Style.abhayaLibre(color: ColorTheme.color12),
        speed: const Duration(milliseconds: 100));
  }

  titleLarge() {
    return Row(
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
    );
  }

  titleSmall() {
    return Row(
      children: [
        Text("Portfolio", style: Style.appBarTitleStyle()),
        const Spacer(),
        InkWell(
          onTap: () {
            _key.currentState!.openEndDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: ColorTheme.textColor,
          ),
        ),
      ],
    );
  }
}

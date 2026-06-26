import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/constant.dart';
import '../sections/social_media_section.dart';
import '../utils/color_constants.dart';
import '../utils/style.dart';
import 'experience_controller.dart';

class ExperienceView extends GetWidget<ExperienceController> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  late ExperienceController controller;

  ExperienceView({super.key}) {
    controller = Get.put(ExperienceController());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    controller.screenWidth = size.width;
    return Container(
        width: controller.screenWidth * 0.5,
        child: Column(children: [_header(), _body()]));
  }

  _header() {
    return Text(
      'EXPERIENCE',
      style: Style.abhayaLibre(
        color: ColorTheme.color12,
      ),
    );
  }

  _body() {
    return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Experience',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 24),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.experiences.length,
          itemBuilder: (context, index) {
            final exp = controller.experiences[index];

            return Card(
              child: ListTile(
                title: Text(exp.org),
                subtitle: Text(
                  '${exp.startDate} - '
                      '${exp.endDate.isEmpty ? 'Present' : exp.endDate}',
                ),
              ),
            );
          },
        ),
      ],
    ),
    );
  }
}

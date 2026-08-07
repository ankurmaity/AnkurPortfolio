import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/section_title.dart';
import '../../home_controller.dart';
import 'experience_card.dart';

class ExperienceSection extends GetView<HomeController> {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 120,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1400),
        child: Column(
          children: [
            const SectionTitle(
              eyebrow: "CAREER JOURNEY",
              title: "A Decade of Building Enterprise Software",
              subtitle:
                  "From enterprise mobility to AI-powered platforms, every role has been focused on solving complex business problems through scalable mobile technology.",
            ),

            const SizedBox(height: 70),

            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.experiences.length,
              separatorBuilder: (_, __) =>
                  const SizedBox(height: 35),
              itemBuilder: (_, index) => ExperienceCard(
                experience: controller.experiences[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
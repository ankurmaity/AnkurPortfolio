import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/section_title.dart';
import '../../home_controller.dart';
import 'experience_card.dart';

class ExperienceSection extends GetView<HomeController> {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 600;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 24,
        vertical: isMobile ? 64 : 100,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1100,
        ),
        child: Column(
          children: [
            const SectionTitle(
              eyebrow: "PROFESSIONAL JOURNEY",
              title: "A Decade of Building Enterprise Software",
              subtitle:
                  "From enterprise mobility to AI-powered platforms, building products that solve complex real-world problems.",
            ),
            SizedBox(height: isMobile ? 36 : 60),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.experiences.length,
              separatorBuilder: (_, __) => SizedBox(
                height: isMobile ? 16 : 24,
              ),
              itemBuilder: (_, index) {
                return ExperienceCard(
                  experience: controller.experiences[index],

                  // Keep the latest role open.
                  initiallyExpanded: index == 0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../core/widgets/section_title.dart';
import '../../home_controller.dart';
import 'service_card.dart';

class ServicesSection extends GetView<HomeController> {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 120,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: Column(
          children: [
            SectionTitle(
              eyebrow: "WHAT I BUILD",
              title: "Solutions I Deliver",
              subtitle:
                  "Enterprise mobile applications, AI solutions, GIS platforms, IoT integrations, and scalable backend systems.",
            ),
            const SizedBox(height: 60),
            Wrap(
              spacing: 30,
              runSpacing: 30,
              alignment: WrapAlignment.center,
              children: controller.services
                  .map((service) => ServiceCard(service: service))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

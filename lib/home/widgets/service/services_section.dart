import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/section_title.dart';
import '../../home_controller.dart';
import 'service_card.dart';

class ServicesSection extends GetView<HomeController> {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 600;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 72 : 120,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: Column(
          children: [
            SectionTitle(
              eyebrow: "WHAT I BUILD",
              title: "Solutions I Deliver",
              subtitle:
                  "Enterprise mobile applications, technical architecture, GIS platforms, IoT integrations, and scalable backend systems.",
            ),
            SizedBox(height: isMobile ? 36 : 60),
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

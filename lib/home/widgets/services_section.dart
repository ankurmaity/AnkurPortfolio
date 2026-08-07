import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../home_controller.dart';
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
            const Text(
              "WHAT I BUILD",
              style: TextStyle(
                color: AppColors.cyan,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Solutions I Deliver",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 60),

            /// Repository-driven cards
            Wrap(
              spacing: 30,
              runSpacing: 30,
              alignment: WrapAlignment.center,
              children: controller.services
                  .map(
                    (service) => ServiceCard(service: service),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

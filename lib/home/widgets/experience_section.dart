import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/theme/app_colors.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 120,
        horizontal: 40,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Column(
          children: [
            const Text(
              "EXPERIENCE",
              style: TextStyle(
                color: AppColors.cyan,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Career Journey",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 80),
            _item(
              year: "2023 - Present",
              company: "Vassar Labs",
              role: "Lead Mobile Developer",
              description:
                  "Leading a team of 10–15 engineers, designing scalable mobile architectures, developing No-Code/Low-Code platforms, and integrating GenAI into enterprise applications.",
            ),
            _item(
              year: "2022 - 2023",
              company: "Tray",
              role: "Senior Software Engineer",
              description:
                  "Developed enterprise POS software for Android KIOSK devices, hardware integrations, configurable receipt printing, and performance optimization.",
            ),
            _item(
              year: "2021 - 2022",
              company: "GE Appliances",
              role: "Mobile Developer",
              description:
                  "Built BLE-enabled diagnostic applications and migrated native Android/iOS codebases to Flutter.",
            ),
            _item(
              year: "2019 - 2021",
              company: "Tray",
              role: "Software Engineer",
              description:
                  "Developed enterprise POS software for Android KIOSK devices, hardware integrations, configurable receipt printing, and performance optimization.",
            ),
            _item(
              year: "2015 - 2019",
              company: "Innovapptive",
              role: "Associate Developer",
              description:
                  "Built SAP enterprise mobile applications with barcode scanners, printers, drones, and smart glasses integrations.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _item({
    required String year,
    required String company,
    required String role,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 180,
            child: Text(
              year,
              style: const TextStyle(
                color: AppColors.cyan,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  color: AppColors.cyan,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 2,
                height: 170,
                color: Colors.white12,
              )
            ],
          ),
          const SizedBox(width: 30),
          Expanded(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(35),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.04),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white10,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      role,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      company,
                      style: const TextStyle(
                        color: AppColors.cyan,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 17,
                        color: AppColors.subtitle,
                        height: 1.8,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ).animate().fade().slideX(begin: .15);
  }
}

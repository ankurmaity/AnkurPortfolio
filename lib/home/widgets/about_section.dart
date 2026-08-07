import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/theme/app_colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  Widget point(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: AppColors.cyan,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.subtitle,
                fontSize: 18,
                height: 1.7,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 120,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.blue,
                    AppColors.cyan,
                  ],
                ),
              ),
              child: const Icon(
                Icons.person,
                size: 180,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 80),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ABOUT ME",
                  style: TextStyle(
                    color: AppColors.cyan,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Building Enterprise Mobile Solutions",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "I specialize in designing scalable Android and Flutter applications, leading engineering teams, architecting enterprise-grade systems, and integrating AI into modern mobile products.",
                  style: TextStyle(
                    color: AppColors.subtitle,
                    fontSize: 18,
                    height: 1.8,
                  ),
                ),
                const SizedBox(height: 40),
                point("Flutter & Android Architecture"),
                point("AI Powered Mobile Applications"),
                point("Enterprise Platform Development"),
                point("Team Leadership & Mentoring"),
                point("Cloud & Backend Integration"),
              ],
            ),
          ),
        ],
      ),
    ).animate().fade().slideX(begin: -.15);
  }
}
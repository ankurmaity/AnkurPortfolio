import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/theme/app_colors.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  Widget card(String number, String title) {
    return Container(
      width: 250,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white12,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: AppColors.cyan,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.subtitle,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 40,
      ),
      child: Wrap(
        spacing: 30,
        runSpacing: 30,
        alignment: WrapAlignment.center,
        children: [
          card("10+", "Years Experience"),
          card("50+", "Projects"),
          card("15+", "Developers Led"),
          card("4", "Companies"),
        ],
      ),
    ).animate().fade(duration: 700.ms).slideY(begin: .2);
  }
}
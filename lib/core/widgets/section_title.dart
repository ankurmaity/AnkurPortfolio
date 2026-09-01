import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String? subtitle;

  const SectionTitle({
    super.key,
    required this.eyebrow,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 600;

    return Column(
      children: [
        Text(
          eyebrow.toUpperCase(),
          style: const TextStyle(
            color: AppColors.cyan,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isMobile ? 34 : 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 18),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: Text(
              subtitle!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.subtitle,
                height: 1.8,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

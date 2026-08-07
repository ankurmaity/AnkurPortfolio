import 'package:flutter/material.dart';

import '../../../../models/experience_model.dart';

class ContributionItem extends StatelessWidget {
  final ExperienceContribution contribution;
  final Color color;

  const ContributionItem({
    super.key,
    required this.contribution,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Icon(
          contribution.icon,
          color: color,
          size: 20,
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Text(
            contribution.title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }
}
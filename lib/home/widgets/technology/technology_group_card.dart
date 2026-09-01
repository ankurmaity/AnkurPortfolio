import 'package:flutter/material.dart';

import '../../../../core/widgets/glass_card.dart';
import '../../../../models/technology_group_model.dart';
import '../../../core/widgets/app_chip.dart';

class TechnologyGroupCard extends StatelessWidget {
  final TechnologyGroupModel group;

  const TechnologyGroupCard({
    super.key,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      width: 400,
      borderColor: group.color,
      glowColor: group.color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              CircleAvatar(
                radius: 28,
                backgroundColor: group.color.withOpacity(.15),

                child: Icon(
                  group.icon,
                  color: group.color,
                  size: 30,
                ),
              ),

              const SizedBox(width: 18),

              Expanded(
                child: Text(
                  group.title,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 28),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: group.technologies
                .map(
                  (technology) => AppChip(
                title: technology,
                color: group.color,
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}
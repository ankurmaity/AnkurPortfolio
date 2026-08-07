import 'package:flutter/material.dart';

import '../../../../core/widgets/glass_card.dart';
import '../../../../models/experience_model.dart';
import '../../../core/widgets/app_chip.dart';
import 'project_chip.dart';
import 'contribution_item.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceModel experience;

  const ExperienceCard({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      width: double.infinity,
      borderColor: experience.color,
      glowColor: experience.color,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //---------------------------------------------------
            // HEADER
            //---------------------------------------------------

            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: experience.color.withOpacity(.12),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(
                    experience.icon,
                    color: experience.color,
                    size: 34,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        experience.company,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        experience.role,
                        style: TextStyle(
                          fontSize: 18,
                          color: experience.color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: experience.color.withOpacity(.12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    experience.duration,
                    style: TextStyle(
                      color: experience.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            //---------------------------------------------------
            // SUMMARY
            //---------------------------------------------------

            Text(
              experience.summary,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.8,
              ),
            ),

            const SizedBox(height: 35),

            //---------------------------------------------------
            // PROJECTS
            //---------------------------------------------------

            const Text(
              "Products Built",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: experience.projects
                  .map(
                    (e) => ProjectChip(
                      title: e.name,
                      color: experience.color,
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 35),

            //---------------------------------------------------
            // CONTRIBUTIONS
            //---------------------------------------------------

            const Text(
              "Key Contributions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            ...experience.contributions.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ContributionItem(
                  contribution: item,
                  color: experience.color,
                ),
              ),
            ),

            const SizedBox(height: 35),

            //---------------------------------------------------
            // TECHNOLOGY
            //---------------------------------------------------

            const Text(
              "Technology",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: experience.technologies
                  .map(
                    (e) => AppChip(title: e, color: experience.color),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

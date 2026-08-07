import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../core/widgets/section_title.dart';
import '../../home_controller.dart';
import 'technology_group_card.dart';

class TechnologySection extends GetView<HomeController> {
  const TechnologySection({super.key});

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
            const SectionTitle(
              eyebrow: "TECH ECOSYSTEM",
              title: "Technologies Behind Every Solution",
              subtitle:
                  "From mobile development and AI to cloud infrastructure and enterprise integrations, I leverage a modern technology stack to build scalable, secure, and high-performance digital products.",
            ),
            const SizedBox(height: 70),
            Wrap(
              spacing: 30,
              runSpacing: 30,
              children: controller.technologyGroups
                  .map((group) => TechnologyGroupCard(group: group))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCategory extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;
  final List<String> skills;

  const SkillCategory({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.skills,
  });

  @override
  State<SkillCategory> createState() => _SkillCategoryState();
}

class _SkillCategoryState extends State<SkillCategory> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 290,
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: hover ? widget.color : Colors.white10,
          ),
          boxShadow: hover
              ? [
                  BoxShadow(
                    color: widget.color.withOpacity(.25),
                    blurRadius: 30,
                    spreadRadius: 1,
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: widget.color.withOpacity(.15),
              child: Icon(
                widget.icon,
                color: widget.color,
                size: 28,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            ...widget.skills.map(
              (skill) => Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 18,
                      color: widget.color,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        skill,
                        style: const TextStyle(
                          color: AppColors.subtitle,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ).animate().fade().slideY(begin: .2);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/theme/app_colors.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

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
              "TECH STACK",
              style: TextStyle(
                color: AppColors.cyan,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Technologies I Work With",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 70),

            Wrap(
              spacing: 30,
              runSpacing: 30,
              children: const [

                SkillCategory(
                  title: "Mobile",
                  icon: Icons.phone_android,
                  color: Color(0xff4F8CFF),
                  skills: [
                    "Flutter",
                    "Android",
                    "Kotlin",
                    "Java",
                    "Jetpack Compose",
                  ],
                ),

                SkillCategory(
                  title: "Backend",
                  icon: Icons.storage,
                  color: Color(0xff00D4FF),
                  skills: [
                    "Python",
                    "Firebase",
                    "REST API",
                    "RoomDB",
                  ],
                ),

                SkillCategory(
                  title: "Architecture",
                  icon: Icons.account_tree,
                  color: Color(0xff7B61FF),
                  skills: [
                    "MVVM",
                    "MVC",
                    "CI/CD",
                    "Agile",
                  ],
                ),

                SkillCategory(
                  title: "Tools",
                  icon: Icons.build,
                  color: Color(0xff22C55E),
                  skills: [
                    "Git",
                    "Jira",
                    "Android Studio",
                    "Google Maps",
                  ],
                ),

              ],
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
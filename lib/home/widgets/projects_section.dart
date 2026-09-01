import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/theme/app_colors.dart';
import '../../core/widgets/section_title.dart';
import '../../models/project_model.dart';
import '../home_controller.dart';

class ProjectsSection extends GetView<HomeController> {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 600;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 72 : 120,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: Column(
          children: [
            const SectionTitle(
              eyebrow: 'PROJECTS',
              title: 'Featured Products',
              subtitle: 'Enterprise products I have helped design and build.',
            ),
            SizedBox(height: isMobile ? 40 : 80),
            Wrap(
              spacing: 30,
              runSpacing: 30,
              alignment: WrapAlignment.center,
              children: controller.projects
                  .map((project) => ProjectCard(project: project))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectModel project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  Future<void> _openProject() async {
    await launchUrl(
      Uri.parse(widget.project.url),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final cardWidth = screenWidth < 430 ? screenWidth - 32 : 390.0;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: _openProject,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: cardWidth,
          padding: EdgeInsets.all(screenWidth < 600 ? 22 : 30),
          transform: Matrix4.identity()
            ..translateByDouble(0, _isHovered ? -10 : 0, 0, 1),
          decoration: BoxDecoration(
            color: _isHovered
                ? Colors.white.withOpacity(.08)
                : Colors.white.withOpacity(.04),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: _isHovered ? AppColors.cyan : Colors.white10,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: AppColors.cyan.withOpacity(.15),
                      blurRadius: 40,
                    ),
                  ]
                : [],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenWidth < 600 ? 140 : 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [AppColors.blue, AppColors.cyan],
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.phone_android,
                    size: 70,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                widget.project.title,
                style: TextStyle(
                  fontSize: screenWidth < 600 ? 24 : 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.project.subtitle,
                style: const TextStyle(color: AppColors.cyan),
              ),
              const SizedBox(height: 6),
              Text(
                widget.project.period,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                widget.project.description,
                style: const TextStyle(
                  height: 1.7,
                  color: AppColors.subtitle,
                ),
              ),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: widget.project.technologies
                    .map(
                      (technology) => Chip(
                        label: Text(technology),
                        backgroundColor: Colors.white10,
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Open Project',
                    style: TextStyle(
                      color: _isHovered ? AppColors.cyan : Colors.white70,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.open_in_new,
                    size: 17,
                    color: _isHovered ? AppColors.cyan : Colors.white70,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ).animate().fade().slideY(begin: .15);
  }
}

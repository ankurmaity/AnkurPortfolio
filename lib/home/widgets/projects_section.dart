import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../core/theme/app_colors.dart';
import '../../core/widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
            SectionTitle(
                eyebrow: "PROJECTS",
                title: "Featured Products",
                subtitle: "Some of the enterprise solutions I've built."),
            const SizedBox(height: 80),
            Wrap(
              spacing: 30,
              runSpacing: 30,
              children: const [
                ProjectCard(
                  title: "MobileWise",
                  subtitle: "No-Code Mobile Platform",
                  description:
                      "Visual mobile application builder with reusable components, WYSIWYG editor, enterprise integrations, and customizable branding.",
                  technologies: [
                    "Flutter",
                    "Python",
                    "AI",
                    "REST API",
                  ],
                ),
                ProjectCard(
                  title: "AP Aware",
                  subtitle: "Disaster Management Platform",
                  description:
                      "AI-powered state platform providing predictive alerts, advisories, weather intelligence, and decision support.",
                  technologies: [
                    "Flutter",
                    "Maps",
                    "GeoServer",
                    "AI",
                  ],
                ),
                ProjectCard(
                  title: "TRAY",
                  subtitle: "Enterprise POS",
                  description:
                      "Android KIOSK-based Point-of-Sale platform supporting custom hardware integrations and configurable receipt printing.",
                  technologies: [
                    "Android",
                    "Kotlin",
                    "POS",
                    "Hardware",
                  ],
                ),
                ProjectCard(
                  title: "SmartHQ",
                  subtitle: "IoT Diagnostics",
                  description:
                      "Bluetooth-enabled appliance diagnostics platform for engineers using BLE and classic Bluetooth communication.",
                  technologies: [
                    "Flutter",
                    "BLE",
                    "IoT",
                    "Bluetooth",
                  ],
                ),
                ProjectCard(
                  title: "mInventory",
                  subtitle: "Warehouse Management",
                  description:
                      "Enterprise inventory management solution for cycle counting, stock movement, and asset tracking.",
                  technologies: [
                    "Android",
                    "SAP",
                    "Barcode",
                  ],
                ),
                ProjectCard(
                  title: "mWorkOrder",
                  subtitle: "Enterprise Mobility",
                  description:
                      "Mobile work order management platform connecting technicians with enterprise workflows.",
                  technologies: [
                    "Android",
                    "SAP",
                    "Enterprise",
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String description;
  final List<String> technologies;

  const ProjectCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.technologies,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 390,
        padding: const EdgeInsets.all(30),
        transform: Matrix4.identity()..translate(0.0, hover ? -10.0 : 0.0),
        decoration: BoxDecoration(
          color: hover
              ? Colors.white.withOpacity(.08)
              : Colors.white.withOpacity(.04),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: hover ? AppColors.cyan : Colors.white10,
          ),
          boxShadow: hover
              ? [
                  BoxShadow(
                    color: AppColors.cyan.withOpacity(.15),
                    blurRadius: 40,
                  )
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.blue,
                    AppColors.cyan,
                  ],
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
              widget.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.subtitle,
              style: const TextStyle(
                color: AppColors.cyan,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.description,
              style: const TextStyle(
                height: 1.7,
                color: AppColors.subtitle,
              ),
            ),
            const SizedBox(height: 25),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: widget.technologies
                  .map(
                    (e) => Chip(
                      label: Text(e),
                      backgroundColor: Colors.white10,
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 25),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward),
              label: const Text("View Details"),
            )
          ],
        ),
      ),
    ).animate().fade().slideY(begin: .15);
  }
}

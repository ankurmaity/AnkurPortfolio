import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import 'widgets/about_section.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/experience/experience_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/projects_section.dart';
import 'widgets/service/services_section.dart';
import 'widgets/technology/technology_section.dart';
import 'widgets/stats_section.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const _Background(),

          SingleChildScrollView(
            controller: controller.scrollController,
            child: const Column(
              children: [
                CustomAppBar(),
                HeroSection(),
                StatsSection(),
                ServicesSection(),
                AboutSection(),
                ExperienceSection(),
                ProjectsSection(),
                TechnologySection(),
                // ContactSection(),
                // FooterSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff06111F),
                  Color(0xff0C1728),
                  Color(0xff111827),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          left: -180,
          top: -120,
          child: Container(
            width: 450,
            height: 450,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(.10),
            ),
          ),
        ),

        Positioned(
          right: -150,
          top: 400,
          child: Container(
            width: 380,
            height: 380,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.cyan.withOpacity(.08),
            ),
          ),
        ),

        Positioned(
          left: 300,
          bottom: -150,
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepPurple.withOpacity(.08),
            ),
          ),
        ),
      ],
    );
  }
}
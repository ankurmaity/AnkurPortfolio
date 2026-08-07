import 'package:flutter/material.dart';

import '../models/experience_model.dart';
import '../models/project_model.dart';
import '../models/service_model.dart';
import '../models/statistic_model.dart';

class PortfolioRepository {
  const PortfolioRepository();

  List<StatisticModel> statistics() => const [
        StatisticModel(
          value: "10+",
          title: "Years Experience",
        ),
        StatisticModel(
          value: "50+",
          title: "Projects",
        ),
        StatisticModel(
          value: "15+",
          title: "Developers Led",
        ),
        StatisticModel(
          value: "4",
          title: "Companies",
        ),
      ];

  List<ServiceModel> services() => const [
        ServiceModel(
          title: "Enterprise Apps",
          description:
              "Scalable Flutter & Android applications built for enterprises.",
          icon: Icons.phone_android,
          color: Color(0xff4F8CFF),
        ),
        ServiceModel(
          title: "AI Solutions",
          description:
              "LLM, GenAI and intelligent automation for modern products.",
          icon: Icons.auto_awesome,
          color: Color(0xff7B61FF),
        ),
        ServiceModel(
          title: "GIS Platforms",
          description:
              "Interactive mapping, GeoServer integration and analytics.",
          icon: Icons.map,
          color: Color(0xff00D4FF),
        ),
        ServiceModel(
          title: "IoT",
          description:
              "BLE devices, custom Android hardware and smart integrations.",
          icon: Icons.memory,
          color: Color(0xff22C55E),
        ),
        ServiceModel(
          title: "No-Code",
          description:
              "Visual application builders that accelerate enterprise delivery.",
          icon: Icons.dashboard_customize,
          color: Color(0xffF59E0B),
        ),
        ServiceModel(
          title: "Backend",
          description:
              "FastAPI, Firebase, PostgreSQL and cloud integrations.",
          icon: Icons.storage,
          color: Color(0xffEF4444),
        ),
      ];

  List<ProjectModel> projects() => const [
        ProjectModel(
          title: "MobileWise",
          subtitle: "No-Code Platform",
          description:
              "Enterprise visual mobile application builder.",
          image: "assets/images/mobilewise.png",
          technologies: [
            "Flutter",
            "Python",
            "AI",
          ],
        ),
        ProjectModel(
          title: "AP Aware",
          subtitle: "AI + GIS",
          description:
              "State-wide disaster management platform.",
          image: "assets/images/apaware.png",
          technologies: [
            "Flutter",
            "GeoServer",
            "Maps",
          ],
        ),
        ProjectModel(
          title: "TRAY",
          subtitle: "Enterprise POS",
          description:
              "Retail POS solution running on custom Android devices.",
          image: "assets/images/tray.png",
          technologies: [
            "Android",
            "Kotlin",
            "Hardware",
          ],
        ),
      ];

  List<ExperienceModel> experience() => const [
        ExperienceModel(
          company: "Vassar Labs",
          role: "Lead Mobile Developer",
          period: "2023 - Present",
          description:
              "Leading engineering teams and building AI-powered enterprise platforms.",
        ),
        ExperienceModel(
          company: "TRAY",
          role: "Senior Software Engineer",
          period: "2022 - 2023",
          description:
              "Enterprise POS platform for KIOSK devices.",
        ),
        ExperienceModel(
          company: "GE Appliances",
          role: "Mobile Developer",
          period: "2021 - 2022",
          description:
              "Flutter migration and BLE diagnostics.",
        ),
        ExperienceModel(
          company: "Innovapptive",
          role: "Associate Developer",
          period: "2015 - 2019",
          description:
              "Enterprise mobility solutions on SAP.",
        ),
      ];
}
import 'package:flutter/material.dart';

import '../models/experience_model.dart';
import '../models/project_model.dart';
import '../models/service_model.dart';
import '../models/statistic_model.dart';
import '../models/technology_group_model.dart';

class PortfolioRepository {
  PortfolioRepository();

  //==========================================================================
  // HERO
  //==========================================================================

  final String name = "Ankur Maity";

  final String designation = "Lead Mobile Architect";

  final String tagline =
      "Building enterprise-grade Flutter, Android, AI and Cloud powered applications.";

  //==========================================================================
  // STATISTICS
  //==========================================================================

  final List<StatisticModel> statistics = const [
    StatisticModel(
      value: "10+",
      title: "Years Experience",
    ),
    StatisticModel(
      value: "50+",
      title: "Projects Delivered",
    ),
    StatisticModel(
      value: "15+",
      title: "Developers Led",
    ),
    StatisticModel(
      value: "4",
      title: "Companies",
    ),
    StatisticModel(
      value: "7+",
      title: "Enterprise Products",
    ),
    StatisticModel(
      value: "100K+",
      title: "Users Impacted",
    ),
  ];

  //==========================================================================
  // SERVICES
  //==========================================================================

  final List<ServiceModel> services = const [
    ServiceModel(
      title: "Enterprise Mobile Apps",
      description:
          "Scalable Android & Flutter applications for enterprise customers.",
      icon: Icons.phone_android,
      color: Color(0xff4F8CFF),
    ),
    ServiceModel(
      title: "Technical Architecture",
      description:
          "Scalable architecture, system design and technical strategy for complex products.",
      icon: Icons.account_tree_outlined,
      color: Color(0xff7B61FF),
    ),
    ServiceModel(
      title: "GIS Platforms",
      description:
          "Interactive mapping, GeoServer, GeoJSON and spatial analytics.",
      icon: Icons.map,
      color: Color(0xff00D4FF),
    ),
    ServiceModel(
      title: "No-Code Platform",
      description:
          "Visual mobile application builder for rapid enterprise development.",
      icon: Icons.dashboard_customize,
      color: Color(0xffF59E0B),
    ),
    ServiceModel(
      title: "Backend Systems",
      description:
          "FastAPI, Firebase, PostgreSQL and cloud-native backend services.",
      icon: Icons.storage,
      color: Color(0xff22C55E),
    ),
    ServiceModel(
      title: "IoT & Hardware",
      description:
          "BLE devices, POS systems, kiosks and external hardware integration.",
      icon: Icons.memory,
      color: Color(0xffEF4444),
    ),
  ];

  //==========================================================================
  // TECHNOLOGY GROUPS
  //==========================================================================

  final List<TechnologyGroupModel> technologyGroups = const [
    TechnologyGroupModel(
      title: "Mobile Development",
      icon: Icons.phone_android,
      color: Color(0xff4F8CFF),
      technologies: [
        "Flutter",
        "Android",
        "Kotlin",
        "Java",
        "Jetpack Compose",
        "RoomDB",
      ],
    ),
    TechnologyGroupModel(
      title: "Backend & Cloud",
      icon: Icons.storage,
      color: Color(0xff22C55E),
      technologies: [
        "Python",
        "FastAPI",
        "Firebase",
        "PostgreSQL",
        "Azure",
      ],
    ),
    TechnologyGroupModel(
      title: "Architecture & Design",
      icon: Icons.account_tree_outlined,
      color: Color(0xff7B61FF),
      technologies: [
        "Clean Architecture",
        "System Design",
        "Design Patterns",
        "Microservices",
      ],
    ),
    TechnologyGroupModel(
      title: "APIs & Integrations",
      icon: Icons.hub_outlined,
      color: Color(0xff06B6D4),
      technologies: [
        "REST APIs",
        "WebSockets",
        "OAuth 2.0",
        "Third-Party SDKs",
      ],
    ),
    TechnologyGroupModel(
      title: "Engineering",
      icon: Icons.engineering,
      color: Color(0xffF59E0B),
      technologies: [
        "Git",
        "Docker",
        "CI/CD",
        "Jira",
        "Agile",
      ],
    ),
    TechnologyGroupModel(
      title: "IoT & Hardware",
      icon: Icons.memory,
      color: Color(0xffEF4444),
      technologies: [
        "BLE",
        "Bluetooth",
        "KIOSK",
        "POS",
        "Printers",
        "Barcode Scanner",
      ],
    ),
  ];

  //==========================================================================
  // EXPERIENCE
  //==========================================================================
  final List<ExperienceModel> experiences = [
    //---------------------------------------------------------------------------
    // Vassar Labs
    //---------------------------------------------------------------------------

    ExperienceModel(
      company: "Vassar Labs",
      role: "Lead Mobile Developer",
      duration: "Nov 2023 - Present",
      summary:
          "Leading the mobile engineering team while architecting enterprise Flutter applications, AI-powered platforms, and scalable No-Code/Low-Code solutions.",
      color: const Color(0xff4F8CFF),
      icon: Icons.business,
      logo: "assets/company/vassar.png",
      location: "Hyderabad, India",
      employmentType: "Full Time",
      metrics: const [
        ExperienceMetric(
          icon: Icons.groups,
          label: "Team",
          value: "10-15",
        ),
        ExperienceMetric(
          icon: Icons.apps,
          label: "Products",
          value: "3+",
        ),
        ExperienceMetric(
          icon: Icons.auto_awesome,
          label: "AI",
          value: "GenAI",
        ),
      ],
      projects: const [
        ProjectInfo(
          name: "MobileWise",
          description: "No-Code Mobile Platform",
        ),
        ProjectInfo(
          name: "AP Aware",
          description: "AI Disaster Platform",
        ),
        ProjectInfo(
          name: "Enterprise AI",
          description: "AI Powered Mobile Platform",
        ),
      ],
      contributions: const [
        ExperienceContribution(
          icon: Icons.groups,
          title: "Led the mobile engineering team",
        ),
        ExperienceContribution(
          icon: Icons.architecture,
          title: "Designed enterprise Flutter architecture",
        ),
        ExperienceContribution(
          icon: Icons.dashboard_customize,
          title: "Built No-Code mobile platform",
        ),
        ExperienceContribution(
          icon: Icons.auto_awesome,
          title: "Integrated AI-powered capabilities",
        ),
        ExperienceContribution(
          icon: Icons.school,
          title: "Mentored developers and established engineering standards",
        ),
      ],
      technologies: const [
        "Flutter",
        "Python",
        "FastAPI",
        "Firebase",
        "Azure",
        "AI",
        "GeoServer",
        "Docker",
      ],
    ),

    //---------------------------------------------------------------------------
    // TRAY
    //---------------------------------------------------------------------------

    ExperienceModel(
      company: "TRAY",
      role: "Senior Software Engineer",
      duration: "May 2022 - Nov 2023",
      summary:
          "Developed enterprise Point-of-Sale applications for Android KIOSK devices with hardware integrations, receipt engine customization and performance optimization.",
      color: const Color(0xffF59E0B),
      icon: Icons.point_of_sale,
      logo: "assets/company/tray.png",
      location: "Remote",
      employmentType: "Full Time",
      metrics: const [
        ExperienceMetric(
          icon: Icons.store,
          label: "Platform",
          value: "Enterprise POS",
        ),
        ExperienceMetric(
          icon: Icons.devices,
          label: "Hardware",
          value: "Integrated",
        ),
        ExperienceMetric(
          icon: Icons.speed,
          label: "Performance",
          value: "Optimized",
        ),
      ],
      projects: const [
        ProjectInfo(
          name: "TRAY POS",
          description: "Android POS Platform",
        ),
      ],
      contributions: const [
        ExperienceContribution(
          icon: Icons.devices_other,
          title: "Integrated POS hardware devices",
        ),
        ExperienceContribution(
          icon: Icons.receipt_long,
          title: "Developed configurable receipt engine",
        ),
        ExperienceContribution(
          icon: Icons.speed,
          title: "Optimized legacy Android application",
        ),
        ExperienceContribution(
          icon: Icons.store,
          title: "Built enterprise retail solution",
        ),
      ],
      technologies: const [
        "Android",
        "Kotlin",
        "Java",
        "SQLite",
      ],
    ),

    //---------------------------------------------------------------------------
    // GE Appliances
    //---------------------------------------------------------------------------

    ExperienceModel(
      company: "GE Appliances",
      role: "Mobile Developer",
      duration: "Mar 2021 - May 2022",
      summary:
          "Developed Flutter applications for smart home appliances using Bluetooth Low Energy while migrating native Android and iOS applications to Flutter.",
      color: const Color(0xff22C55E),
      icon: Icons.home,
      logo: "assets/company/ge.png",
      location: "Remote",
      employmentType: "Full Time",
      metrics: const [
        ExperienceMetric(
          icon: Icons.bluetooth,
          label: "BLE",
          value: "IoT",
        ),
        ExperienceMetric(
          icon: Icons.flutter_dash,
          label: "Migration",
          value: "Flutter",
        ),
        ExperienceMetric(
          icon: Icons.home,
          label: "Product",
          value: "SmartHQ",
        ),
      ],
      projects: const [
        ProjectInfo(
          name: "SmartHQ",
          description: "Smart Home Platform",
        ),
      ],
      contributions: const [
        ExperienceContribution(
          icon: Icons.bluetooth,
          title: "Implemented BLE communication",
        ),
        ExperienceContribution(
          icon: Icons.flutter_dash,
          title: "Migrated native apps to Flutter",
        ),
        ExperienceContribution(
          icon: Icons.home,
          title: "Developed IoT mobile applications",
        ),
        ExperienceContribution(
          icon: Icons.bug_report,
          title: "Built appliance diagnostic tools",
        ),
      ],
      technologies: const [
        "Flutter",
        "Android",
        "iOS",
        "BLE",
        "Bluetooth",
      ],
    ),

    //---------------------------------------------------------------------------
    // TRAY
    //---------------------------------------------------------------------------

    ExperienceModel(
      company: "TRAY",
      role: "Software Engineer",
      duration: "April 2019 - Feb 2021",
      summary:
          "Developed enterprise Point-of-Sale applications for Android KIOSK devices with hardware integrations, receipt engine customization and performance optimization.",
      color: const Color(0xffF59E0B),
      icon: Icons.point_of_sale,
      logo: "assets/company/tray.png",
      location: "Remote",
      employmentType: "Full Time",
      metrics: const [
        ExperienceMetric(
          icon: Icons.store,
          label: "Platform",
          value: "Enterprise POS",
        ),
        ExperienceMetric(
          icon: Icons.devices,
          label: "Hardware",
          value: "Integrated",
        ),
        ExperienceMetric(
          icon: Icons.speed,
          label: "Performance",
          value: "Optimized",
        ),
      ],
      projects: const [
        ProjectInfo(
          name: "TRAY POS",
          description: "Android POS Platform",
        ),
      ],
      contributions: const [
        ExperienceContribution(
          icon: Icons.devices_other,
          title: "Integrated POS hardware devices",
        ),
        ExperienceContribution(
          icon: Icons.receipt_long,
          title: "Developed configurable receipt engine",
        ),
        ExperienceContribution(
          icon: Icons.speed,
          title: "Optimized legacy Android application",
        ),
        ExperienceContribution(
          icon: Icons.store,
          title: "Built enterprise retail solution",
        ),
      ],
      technologies: const [
        "Android",
        "Kotlin",
        "Java",
        "SQLite",
      ],
    ),

    //---------------------------------------------------------------------------
    // Innovapptive
    //---------------------------------------------------------------------------

    ExperienceModel(
      company: "Innovapptive",
      role: "Associate Developer",
      duration: "Sep 2015 - Apr 2019",
      summary:
          "Built enterprise mobility solutions integrated with SAP and industrial hardware for manufacturing and field operations.",
      color: const Color(0xff7B61FF),
      icon: Icons.business_center,
      logo: "assets/company/innovapptive.png",
      location: "Hyderabad, India",
      employmentType: "Full Time",
      metrics: const [
        ExperienceMetric(
          icon: Icons.business,
          label: "Platform",
          value: "SAP",
        ),
        ExperienceMetric(
          icon: Icons.devices,
          label: "Devices",
          value: "Industrial",
        ),
        ExperienceMetric(
          icon: Icons.mobile_friendly,
          label: "Apps",
          value: "Enterprise",
        ),
      ],
      projects: const [
        ProjectInfo(
          name: "mInventory",
          description: "Inventory Management",
        ),
        ProjectInfo(
          name: "mWorkOrder",
          description: "Work Order Management",
        ),
        ProjectInfo(
          name: "mWarehouse",
          description: "Warehouse Solution",
        ),
      ],
      contributions: const [
        ExperienceContribution(
          icon: Icons.qr_code_scanner,
          title: "Integrated barcode scanners",
        ),
        ExperienceContribution(
          icon: Icons.print,
          title: "Connected industrial printers",
        ),
        ExperienceContribution(
          icon: Icons.flight,
          title: "Implemented drone support",
        ),
        ExperienceContribution(
          icon: Icons.visibility,
          title: "Worked with smart glasses",
        ),
        ExperienceContribution(
          icon: Icons.business,
          title: "Built SAP enterprise mobility solutions",
        ),
      ],
      technologies: const [
        "Android",
        "Java",
        "SAP",
        "SQLite",
      ],
    ),
  ];

  //==========================================================================
  // PROJECTS
  //==========================================================================

  final List<ProjectModel> projects = const [
    ProjectModel(
      title: "AP Aware",
      subtitle: "AI Disaster Intelligence",
      description:
          "State-wide disaster management platform delivering AI-powered alerts and advisories.",
      image: "assets/images/apaware.png",
      technologies: [
        "Flutter",
        "GeoServer",
        "Maps",
        "AI",
      ],
    ),
    ProjectModel(
      title: "MobileWise",
      subtitle: "No-Code Mobile Platform",
      description:
          "Visual mobile application builder enabling enterprises to create apps without coding.",
      image: "assets/images/mobilewise.png",
      technologies: [
        "Flutter",
        "Python",
        "AI",
        "REST API",
      ],
    ),
    ProjectModel(
      title: "TRAY POS",
      subtitle: "Enterprise POS",
      description:
          "Android POS platform supporting KIOSK devices and external hardware.",
      image: "assets/images/tray.png",
      technologies: [
        "Android",
        "Kotlin",
        "Hardware",
      ],
    ),
    ProjectModel(
      title: "SmartHQ",
      subtitle: "IoT Diagnostics",
      description: "BLE-enabled smart appliance diagnostics application.",
      image: "assets/images/smarthq.png",
      technologies: [
        "Flutter",
        "BLE",
        "IoT",
      ],
    ),
    ProjectModel(
      title: "mInventory",
      subtitle: "Warehouse Management",
      description:
          "Enterprise inventory management and asset tracking solution.",
      image: "assets/images/minventory.png",
      technologies: [
        "Android",
        "SAP",
      ],
    ),
    ProjectModel(
      title: "mWorkOrder",
      subtitle: "Enterprise Mobility",
      description:
          "Mobile work order management platform for enterprise field teams.",
      image: "assets/images/mworkorder.png",
      technologies: [
        "Android",
        "SAP",
      ],
    ),
  ];

  //==========================================================================
  // SOCIAL LINKS
  //==========================================================================

  final String email = "ankurmaity16@gmail.com";

  final String phone = "+91 7696121156";

  final String location = "Hyderabad, India";

  final String linkedin = "https://linkedin.com/in/ankurmaity";

  final String github = "https://github.com/ankurmaity";

  final String website = "https://ankurmaity.in";
}

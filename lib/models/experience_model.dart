import 'package:flutter/material.dart';

/// ===============================================================
/// EXPERIENCE
/// ===============================================================

class ExperienceModel {
  /// Company
  final String company;
  final String role;
  final String duration;
  final String summary;

  /// UI
  final Color color;
  final IconData icon;
  final String? logo;

  /// Optional
  final String? location;
  final String? employmentType;

  /// Projects
  final List<ProjectInfo> projects;

  /// Contributions
  final List<ExperienceContribution> contributions;

  /// Tech Stack
  final List<String> technologies;

  /// Quick Metrics
  final List<ExperienceMetric> metrics;

  /// Optional
  final String? caseStudyUrl;

  const ExperienceModel({
    required this.company,
    required this.role,
    required this.duration,
    required this.summary,
    required this.color,
    required this.icon,
    required this.projects,
    required this.contributions,
    required this.technologies,
    required this.metrics,
    this.logo,
    this.location,
    this.employmentType,
    this.caseStudyUrl,
  });
}

/// ===============================================================
/// PROJECT
/// ===============================================================

class ProjectInfo {
  final String name;
  final String? description;

  const ProjectInfo({
    required this.name,
    this.description,
  });
}

/// ===============================================================
/// CONTRIBUTION
/// ===============================================================

class ExperienceContribution {
  final IconData icon;
  final String title;
  final String? description;

  const ExperienceContribution({
    required this.icon,
    required this.title,
    this.description,
  });
}

/// ===============================================================
/// METRIC
/// ===============================================================

class ExperienceMetric {
  final String label;
  final String value;
  final IconData icon;

  const ExperienceMetric({
    required this.label,
    required this.value,
    required this.icon,
  });
}
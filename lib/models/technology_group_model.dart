import 'package:flutter/material.dart';

class TechnologyGroupModel {
  final String title;
  final IconData icon;
  final Color color;
  final List<String> technologies;

  const TechnologyGroupModel({
    required this.title,
    required this.icon,
    required this.color,
    required this.technologies,
  });
}
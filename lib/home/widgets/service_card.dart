import 'package:flutter/material.dart';

import '../../models/service_model.dart';
import 'glass_card.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      borderColor: service.color,
      glowColor: service.color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: service.color.withOpacity(.15),
            child: Icon(
              service.icon,
              color: service.color,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            service.title,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            service.description,
          ),
        ],
      ),
    );
  }
}

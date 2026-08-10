import 'package:flutter/material.dart';

import '../../../../core/widgets/app_chip.dart';
import '../../../../core/widgets/glass_card.dart';
import '../../../../models/experience_model.dart';
import 'contribution_item.dart';

class ExperienceCard extends StatefulWidget {
  final ExperienceModel experience;
  final bool initiallyExpanded;

  const ExperienceCard({
    super.key,
    required this.experience,
    this.initiallyExpanded = false,
  });

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  late bool isExpanded;

  @override
  void initState() {
    super.initState();
    isExpanded = widget.initiallyExpanded;
  }

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      width: double.infinity,
      borderColor: widget.experience.color,
      glowColor: widget.experience.color,
      onTap: toggleExpanded,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),

          const SizedBox(height: 20),

          _buildSummary(),

          const SizedBox(height: 20),

          _buildTechnologyPreview(),

          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: const SizedBox.shrink(),
            secondChild: _buildExpandedContent(),
          ),
        ],
      ),
    );
  }

  //==================================================================
  // HEADER
  //==================================================================

  Widget _buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCompanyIcon(),

        const SizedBox(width: 16),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.experience.company,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                widget.experience.role,
                style: TextStyle(
                  color: widget.experience.color,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 12),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildDuration(),

            const SizedBox(height: 10),

            AnimatedRotation(
              turns: isExpanded ? 0.5 : 0,
              duration: const Duration(milliseconds: 250),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: widget.experience.color,
                size: 26,
              ),
            ),
          ],
        ),
      ],
    );
  }

  //==================================================================
  // COMPANY ICON
  //==================================================================

  Widget _buildCompanyIcon() {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        color: widget.experience.color.withOpacity(.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: widget.experience.logo != null
          ? Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          widget.experience.logo!,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) {
            return Icon(
              widget.experience.icon,
              color: widget.experience.color,
              size: 28,
            );
          },
        ),
      )
          : Icon(
        widget.experience.icon,
        color: widget.experience.color,
        size: 28,
      ),
    );
  }

  //==================================================================
  // DURATION
  //==================================================================

  Widget _buildDuration() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: widget.experience.color.withOpacity(.10),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        widget.experience.duration,
        style: TextStyle(
          color: widget.experience.color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  //==================================================================
  // SUMMARY
  //==================================================================

  Widget _buildSummary() {
    return Text(
      widget.experience.summary,
      maxLines: isExpanded ? null : 2,
      overflow: isExpanded
          ? TextOverflow.visible
          : TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.white70,
        fontSize: 15,
        height: 1.7,
      ),
    );
  }

  //==================================================================
  // TECHNOLOGY PREVIEW
  //==================================================================

  Widget _buildTechnologyPreview() {
    final technologies = widget.experience.technologies;

    final previewCount = technologies.length > 4
        ? 4
        : technologies.length;

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ...technologies
            .take(previewCount)
            .map(
              (technology) => AppChip(
            title: technology,
            color: widget.experience.color,
          ),
        ),

        if (!isExpanded && technologies.length > 4)
          AppChip(
            title: "+${technologies.length - 4}",
            color: widget.experience.color,
          ),
      ],
    );
  }

  //==================================================================
  // EXPANDED CONTENT
  //==================================================================

  Widget _buildExpandedContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),

        _buildSectionDivider(),

        const SizedBox(height: 28),

        // -----------------------------------------------------------
        // PROJECTS
        // -----------------------------------------------------------

        if (widget.experience.projects.isNotEmpty) ...[
          _buildSectionTitle(
            Icons.apps,
            "Products Built",
          ),

          const SizedBox(height: 16),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: widget.experience.projects
                .map(
                  (project) => AppChip(
                title: project.name,
                color: widget.experience.color,
              ),
            )
                .toList(),
          ),

          const SizedBox(height: 30),
        ],

        // -----------------------------------------------------------
        // CONTRIBUTIONS
        // -----------------------------------------------------------

        if (widget.experience.contributions.isNotEmpty) ...[
          _buildSectionTitle(
            Icons.check_circle_outline,
            "Key Contributions",
          ),

          const SizedBox(height: 16),

          ...widget.experience.contributions.map(
                (contribution) => Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: ContributionItem(
                contribution: contribution,
                color: widget.experience.color,
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],

        // -----------------------------------------------------------
        // TECHNOLOGIES
        // -----------------------------------------------------------

        _buildSectionTitle(
          Icons.code,
          "Technology",
        ),

        const SizedBox(height: 16),

        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: widget.experience.technologies
              .map(
                (technology) => AppChip(
              title: technology,
              color: widget.experience.color,
            ),
          )
              .toList(),
        ),

        const SizedBox(height: 10),
      ],
    );
  }

  //==================================================================
  // SECTION TITLE
  //==================================================================

  Widget _buildSectionTitle(
      IconData icon,
      String title,
      ) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: widget.experience.color,
        ),

        const SizedBox(width: 8),

        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  //==================================================================
  // DIVIDER
  //==================================================================

  Widget _buildSectionDivider() {
    return Container(
      height: 1,
      color: Colors.white10,
    );
  }
}
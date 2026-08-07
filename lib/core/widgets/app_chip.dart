import 'package:flutter/material.dart';

class AppChip extends StatefulWidget {
  final String title;
  final Color color;
  final IconData? icon;

  const AppChip({
    super.key,
    required this.title,
    required this.color,
    this.icon,
  });

  @override
  State<AppChip> createState() => _AppChipState();
}

class _AppChipState extends State<AppChip> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: hover
              ? widget.color.withOpacity(.18)
              : Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: hover
                ? widget.color
                : Colors.white10,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            if (widget.icon != null) ...[
              Icon(
                widget.icon,
                size: 16,
                color: widget.color,
              ),
              const SizedBox(width: 8),
            ],

            Text(
              widget.title,
              style: TextStyle(
                color: hover
                    ? widget.color
                    : Colors.white70,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
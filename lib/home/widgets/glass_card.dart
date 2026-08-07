import 'package:flutter/material.dart';

class GlassCard extends StatefulWidget {
  final Widget child;

  final double width;

  final EdgeInsetsGeometry padding;

  final Color? borderColor;

  final Color? glowColor;

  final double radius;

  final VoidCallback? onTap;

  const GlassCard({
    super.key,
    required this.child,
    this.width = 350,
    this.padding = const EdgeInsets.all(30),
    this.radius = 24,
    this.borderColor,
    this.glowColor,
    this.onTap,
  });

  @override
  State<GlassCard> createState() => _GlassCardState();
}

class _GlassCardState extends State<GlassCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor:
          widget.onTap != null ? SystemMouseCursors.click : MouseCursor.defer,
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          width: widget.width,
          padding: widget.padding,
          transform: Matrix4.identity()
            ..translate(
              0.0,
              hover ? -8.0 : 0.0,
            ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(widget.radius),
            border: Border.all(
              color:
                  hover ? (widget.borderColor ?? Colors.blue) : Colors.white10,
            ),
            boxShadow: hover
                ? [
                    BoxShadow(
                      color: (widget.glowColor ??
                              widget.borderColor ??
                              Colors.blue)
                          .withOpacity(.25),
                      blurRadius: 35,
                      spreadRadius: 1,
                    )
                  ]
                : [],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

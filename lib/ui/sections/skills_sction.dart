import 'package:flutter/material.dart';

import '../utils/color_constants.dart';

class InfiniteSkillsTicker extends StatefulWidget {
  final List<String> skills;

  const InfiniteSkillsTicker({
    super.key,
    required this.skills,
  });

  @override
  State<InfiniteSkillsTicker> createState() => _InfiniteSkillsTickerState();
}

class _InfiniteSkillsTickerState extends State<InfiniteSkillsTicker> {
  late final ScrollController controller;

  @override
  void initState() {
    super.initState();

    controller = ScrollController(
      initialScrollOffset: 50000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAutoScroll();
    });
  }

  Future<void> _startAutoScroll() async {
    while (mounted) {
      if (!controller.hasClients) {
        await Future.delayed(
          const Duration(milliseconds: 100),
        );
        continue;
      }

      controller.jumpTo(
        controller.offset + 1,
      );

      await Future.delayed(
        const Duration(milliseconds: 20),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: 1000000,
        itemBuilder: (_, index) {
          final skill = widget.skills[index % widget.skills.length];

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorTheme.color12,
              border: Border.all(
                color: ColorTheme.color12,
              ),
            ),
            child: Center(
              child: Text(skill),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

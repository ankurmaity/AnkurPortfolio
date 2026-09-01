import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../home_controller.dart';

class CustomAppBar extends GetView<HomeController> {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 700;

    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 60,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: controller.isScrolled.value
              ? Colors.black.withOpacity(.35)
              : Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: controller.isScrolled.value
                  ? Colors.white10
                  : Colors.transparent,
            ),
          ),
        ),
        child: Row(
          children: [
            Text(
              "Ankur Maity",
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 20 : 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            if (!isMobile) ...[
              _menu("About"),
              _menu("Experience"),
              _menu("Projects"),
              _menu("Contact"),
            ] else
              const Icon(Icons.menu, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _menu(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.subtitle,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

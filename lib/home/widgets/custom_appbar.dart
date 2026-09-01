import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../home_controller.dart';

class CustomAppBar extends GetView<HomeController> {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 900;

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
              _menu("About", controller.scrollToTop),
              _menu("Experience", controller.scrollToExperience),
              _menu("Projects", controller.scrollToProjects),
              _menu("Contact", controller.scrollToContact),
            ] else
              PopupMenuButton<VoidCallback>(
                tooltip: 'Navigation menu',
                icon: const Icon(Icons.menu_rounded, color: Colors.white),
                color: const Color(0xff111827),
                elevation: 12,
                offset: const Offset(0, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: Colors.white12),
                ),
                onSelected: (action) => action(),
                itemBuilder: (_) => [
                  _mobileMenu(
                    "About",
                    Icons.person_outline,
                    controller.scrollToTop,
                  ),
                  _mobileMenu(
                    "Experience",
                    Icons.work_outline,
                    controller.scrollToExperience,
                  ),
                  _mobileMenu(
                    "Projects",
                    Icons.apps_outlined,
                    controller.scrollToProjects,
                  ),
                  _mobileMenu(
                    "Contact",
                    Icons.mail_outline,
                    controller.scrollToContact,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _menu(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.subtitle,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  PopupMenuItem<VoidCallback> _mobileMenu(
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return PopupMenuItem(
      value: onTap,
      child: Row(
        children: [
          Icon(icon, size: 20, color: AppColors.cyan),
          const SizedBox(width: 12),
          Text(title),
        ],
      ),
    );
  }
}

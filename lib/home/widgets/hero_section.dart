import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 700;

    return Container(
      height: isMobile ? 720 : 850,
      child: Stack(
        children: [
          Positioned(
            left: -120,
            top: 100,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: AppColors.blue.withOpacity(.15),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: -80,
            bottom: 150,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                color: AppColors.cyan.withOpacity(.12),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              "👋 Welcome to my portfolio",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            "Ankur Maity",
                            style: TextStyle(
                              fontSize: isMobile ? 48 : 72,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                          const SizedBox(height: 24),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: isMobile ? 21 : 28,
                              color: AppColors.cyan,
                              fontWeight: FontWeight.w600,
                            ),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  "Lead Mobile Developer",
                                  speed: const Duration(milliseconds: 60),
                                ),
                                TypewriterAnimatedText(
                                  "Flutter Expert",
                                  speed: const Duration(milliseconds: 60),
                                ),
                                TypewriterAnimatedText(
                                  "Android Architect",
                                  speed: const Duration(milliseconds: 60),
                                ),
                                TypewriterAnimatedText(
                                  "AI Enthusiast",
                                  speed: const Duration(milliseconds: 60),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 600),
                            child: const Text(
                              "Building enterprise-grade Android and Flutter applications with over 10 years of experience in architecture, AI integration, team leadership, and scalable mobile solutions.",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.subtitle,
                                height: 1.7,
                              ),
                            ),
                          ),
                          const SizedBox(height: 45),
                          Wrap(
                            spacing: 20,
                            runSpacing: 14,
                            children: [
                              FilledButton(
                                onPressed: () {},
                                style: FilledButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 34,
                                    vertical: 22,
                                  ),
                                ),
                                child: const Text("Download Resume"),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 34,
                                    vertical: 22,
                                  ),
                                ),
                                child: const Text("Contact Me"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (!isMobile) ...[
                      const SizedBox(width: 50),
                      Expanded(
                        child: Center(
                          child: Container(
                            width: 420,
                            height: 420,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff4F8CFF),
                                  Color(0xff00D4FF),
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.flutter_dash,
                                color: Colors.white,
                                size: 170,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/portfolio_repository.dart';

class HomeController extends GetxController {
  final scrollController = ScrollController();

  final selectedMenu = 0.obs;

  final isScrolled = false.obs;

  final repository = const PortfolioRepository();

  late final statistics = repository.statistics();

  late final services = repository.services();

  late final projects = repository.projects();

  late final experiences = repository.experience();

  @override
  void onInit() {
    scrollController.addListener(() {
      isScrolled.value = scrollController.offset > 40;
    });

    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();

    super.onClose();
  }
}

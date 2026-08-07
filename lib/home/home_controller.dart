import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/experience_model.dart';
import '../models/project_model.dart';
import '../models/service_model.dart';
import '../models/statistic_model.dart';
import '../models/technology_group_model.dart';
import '../repositories/portfolio_repository.dart';

class HomeController extends GetxController {
  final scrollController = ScrollController();

  final selectedMenu = 0.obs;

  final isScrolled = false.obs;


  final portfolio =  PortfolioRepository();

  List<StatisticModel> get statistics => portfolio.statistics;

  List<ServiceModel> get services => portfolio.services;

  List<TechnologyGroupModel> get technologyGroups => portfolio.technologyGroups;

  List<ProjectModel> get projects => portfolio.projects;

  List<ExperienceModel> get experiences => portfolio.experiences;

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

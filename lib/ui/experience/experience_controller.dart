import 'package:ankur_portfolio/data/repository.dart';
import 'package:get/get.dart';

import '../../model/experience_model.dart';

class ExperienceController extends GetxController {
  var screenWidth = 0.0;

  var experiences = <Experience>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _getExperience();
  }

  _getExperience() async {
    experiences.value = await Repository.getExperience();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

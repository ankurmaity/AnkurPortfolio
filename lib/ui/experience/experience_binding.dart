import 'package:get/get.dart';

import 'experience_controller.dart';



class ExperienceBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ExperienceController>(
      ExperienceController(),
    );
  }
}

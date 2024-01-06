import 'package:get/get.dart';

import '../../data/app_data.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    AppData.initialize();

    Future.delayed(const Duration(milliseconds: 6000), () {
      Get.offAllNamed(Routes.DASHBOARD);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}

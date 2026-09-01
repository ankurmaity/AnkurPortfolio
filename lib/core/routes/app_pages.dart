import 'package:get/get.dart';

import '../../home/home_binding.dart';
import '../../home/home_view.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
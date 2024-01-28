import 'package:get/get.dart';

import '../ui/dashboard/dashboard_binding.dart';
import '../ui/dashboard/dashboard_view.dart';
import '../ui/splash/splash_binding.dart';
import '../ui/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initialPage = Routes.SPLASH;

  static final routes = [
     GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}

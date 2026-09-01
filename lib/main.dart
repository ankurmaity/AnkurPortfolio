import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/app_pages.dart';
import 'core/theme/app_theme.dart';

void main() async {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Ankur Maity',
    theme: AppTheme.dark,
    initialRoute: AppPages.initial,
    getPages: AppPages.routes,
  ));
}

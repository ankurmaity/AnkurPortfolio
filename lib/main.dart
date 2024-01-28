import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() async {
  runApp(GetMaterialApp(
    title: "Ankur Maity",
    initialRoute: AppPages.initialPage,
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blueGrey, primaryColor: Colors.amber),
    routingCallback: (value) {
      // Here you can check which screen your app is currently on
      switch (value?.current) {
        case Routes.SPLASH:
          {
            // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            //   statusBarColor: Colors.white,
            //   systemNavigationBarColor: Colors.white,
            //   systemNavigationBarDividerColor: Colors.black,
            //   systemNavigationBarIconBrightness: Brightness.dark,
            // ));
          }
      }

    },
  ));
}

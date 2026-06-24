import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../about/about_view.dart';
import '../experience/experience_view.dart';
import '../utils/color_constants.dart';
import '../utils/style.dart';
import 'dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  DashboardView({super.key});

  Drawer sideNav() {
    return Drawer(
        child: Stack(children: <Widget>[
      //first child be the blur background
      BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          //this is dependent on the import statment above
          child: Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)))),
      ListView(padding: EdgeInsets.zero, children: const <Widget>[
        DrawerHeader(
          child: Text('Hello Drawer Title'),
        ),
      ])
    ]));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        key: _key,
        endDrawer: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Drawer(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 80),
              color: ColorTheme.color5,
              child: Column(
                children: [
                  Text("Home", style: Style.appBarMenuStyle()),
                  const SizedBox(width: 30),
                  Text("About", style: Style.appBarMenuStyle()),
                  const SizedBox(width: 30),
                  Text("Portfolio", style: Style.appBarMenuStyle()),
                  const SizedBox(width: 30),
                  Text("Contact", style: Style.appBarMenuStyle()),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: ColorTheme.bgColor,
        appBar: AppBar(
            actions: const [SizedBox()],
            backgroundColor: ColorTheme.bgColor,
            toolbarHeight: 80,
            titleSpacing: 100,
            title: size.width > 750 ? titleLarge() : titleSmall()),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: size.height * 0.2,
            left: size.width * 0.1,
            right: size.width * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutView(),
              ExperienceView()
            ],
          ),
        ));
  }

  textAnimator(String text) {
    return TyperAnimatedText(text,
        textStyle: Style.abhayaLibre(color: ColorTheme.color12),
        speed: const Duration(milliseconds: 100));
  }

  titleLarge() {
    return Row(
      children: [
        Text("Portfolio", style: Style.appBarTitleStyle()),
        const Spacer(),
        Text("Home", style: Style.appBarMenuStyle()),
        const SizedBox(width: 30),
        Text("About", style: Style.appBarMenuStyle()),
        const SizedBox(width: 30),
        Text("Portfolio", style: Style.appBarMenuStyle()),
        const SizedBox(width: 30),
        Text("Contact", style: Style.appBarMenuStyle()),
      ],
    );
  }

  titleSmall() {
    return Row(
      children: [
        Text("Portfolio", style: Style.appBarTitleStyle()),
        const Spacer(),
        InkWell(
          onTap: () {
            _key.currentState!.openEndDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: ColorTheme.textColor,
          ),
        ),
      ],
    );
  }
}

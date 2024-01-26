import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';


class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Image(
      image: AssetImage('assets/icons/ic_logo.png'),
      width: 200,
      height: 200,
    )));
    // return Material(
    //   child: Stack(
    //     children: [
    //       // This is to fill the entire stack
    //       Positioned.fill(
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 130),
    //           child: const CircleAvatar(
    //             backgroundColor: Colors.cyan,
    //           )
    //               .animate()
    //               .slideY(begin: -0.5, end: 0.2, duration: GetNumUtils(0.5).seconds)
    //               .then(delay: GetNumUtils(600).milliseconds)
    //               .slideY(end: -0.3, duration: GetNumUtils(0.5).seconds)
    //               .then(delay: GetNumUtils(600).milliseconds)
    //               .slideY(end: 0.1, duration: GetNumUtils(0.5).seconds)
    //               .then(delay: GetNumUtils(1).seconds)
    //               .scaleXY(end: 20, duration: GetNumUtils(2).seconds)
    //               .then(delay: GetNumUtils(2).seconds),
    //         ),
    //       ),
    //       Align(
    //         alignment: Alignment.center,
    //         child: const FlutterLogo(
    //
    //           size: 80,
    //         )
    //             .animate()
    //             .fadeIn(delay: GetNumUtils(4).seconds, duration: GetNumUtils(900).milliseconds)
    //             .slideX(begin: 3, duration: GetNumUtils(0.5).seconds),
    //       ),
    //     ],
    //   ),
    // );
  }
}
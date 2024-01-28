import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color_constants.dart';

class RoundIcon extends StatelessWidget {
  RoundIcon(this.path,
      {super.key,
      this.size = 40,
      this.color = ColorTheme.color3,
      this.margin = 5,
      this.onTap});

  String path;
  int size;
  int margin;
  Color color;
  GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        splashColor: ColorTheme.color2,
        child: SvgPicture.asset(
          path,
          semanticsLabel: 'My SVG Image',
          height: size.toDouble(),
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
      ),
    );
  }
}

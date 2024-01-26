import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color_constants.dart';

class RoundIcon extends StatelessWidget {
  RoundIcon(this.path,
      {super.key,
      this.size = 40,
      this.color = ColorTheme.color3,
      this.margin = 5});

  String path;
  int size;
  int margin;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {},
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

// Container(
// margin: EdgeInsets.all(margin.toDouble()),
// padding: const EdgeInsets.all(1),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(45),
// border: Border.all(width: 1, color: color)),
// child: SvgPicture.asset(
// path,
// semanticsLabel: 'My SVG Image',
// height: size.toDouble(),
// colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
// ));

// InkWell(
// hoverColor: ColorTheme.color12_hover,
// splashColor: Colors.red,
// child: Container(
// padding: const EdgeInsets.all(1),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(45),
// border: Border.all(width: 1, color: color),
// color: ColorTheme.bgColor),
// child: SvgPicture.asset(
// path,
// semanticsLabel: 'My SVG Image',
// height: size.toDouble(),
// colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
// )),
// )

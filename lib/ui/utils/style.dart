import 'package:ankur_portfolio/ui/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static TextStyle appBarTitleStyle() {
    return GoogleFonts.aboreto(color: ColorTheme.textColor, fontSize: 20);
  }

  static TextStyle appBarMenuStyle() {
    return GoogleFonts.oswald(
        color: ColorTheme.textColor, fontSize: 15, fontWeight: FontWeight.w800);
  }

  static TextStyle theme1({Color color = ColorTheme.textColor}) {
    return GoogleFonts.abhayaLibre(
        color: color, fontSize: 25, fontWeight: FontWeight.w300);
  }

  static TextStyle theme2({Color color = ColorTheme.textColor}) {
    return GoogleFonts.bungee(
        color: color, fontSize: 40, fontWeight: FontWeight.w500);
  }

  static TextStyle body({Color color = ColorTheme.textColor}) {
    return GoogleFonts.signikaNegative(
        color: color, fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 2);
  }
}

import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorTheme {
  static const Color bgColor = Color(0xFF04364A);
  static const Color color2 = Color(0xFF176B87);
  static const Color color3 = Color(0xFF64CCC5);
  static const Color color4 = Color(0xFFDAFFFB);
  static const Color textColor = Color(0xFFE8FAF8);

  static const Color color5 = Color(0xFF164B60);
  static const Color color6 = Color(0xFF1B6B93);
  static const Color color7 = Color(0xFF4FC0D0);
  static const Color color8 = Color(0xFFA2FF86);

  static const Color color9 = Color(0xFF2D3250);
  static const Color color10 = Color(0xFF424769);
  static const Color color11 = Color(0xFF7077A1);
  static const Color color12 = Color(0xFFF6B17A);
  static const Color color12_hover = Color(0xFFF6A65E);
}

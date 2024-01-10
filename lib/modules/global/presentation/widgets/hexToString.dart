import 'dart:ui';

Color hexToColor(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  return Color(int.parse("0xFF$hexColor"));
}

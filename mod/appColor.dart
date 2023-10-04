import 'package:flutter/material.dart';

extension ColorExtension on String {
  static const RED = "RED";
  static const GREEN = "GREEN";
  static const BLUE = "BLUE";
  static const DEFAULT = "#872A2A";

  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

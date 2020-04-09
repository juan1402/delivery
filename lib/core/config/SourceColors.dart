import 'package:flutter/material.dart';

class SourceColors {
  static final Color primaryColor = Color(_fromHex("#550994"));
  static final backgroundColor = Color(_fromHex("#f7f2f2"));
  static final cardBackground = Color(_fromHex("#f5f5f5"));
  static final accentColor = Color(_fromHex("#ffcf08"));
  static final appBarColor = Color(_fromHex("#fafafa"));

  static int _fromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) hexColor = "FF" + hexColor;
    return int.parse(hexColor, radix: 16);
  }
}

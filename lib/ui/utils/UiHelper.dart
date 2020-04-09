import 'package:flutter/material.dart';

class UIHelper {

  static Widget verticalSpace(double size) => SizedBox(height: size);

  static Widget horizontalSpace(double size) => SizedBox(width: size);

  static const Widget verticalSpaceLarge = SizedBox(height: 30);

  static const Widget horizontalSpaceLarge = SizedBox(width: 30);

  static const Widget verticalSpaceSmall = SizedBox(height: 10);

  static const Widget horizontalSpaceSmall = SizedBox(width: 10);
}

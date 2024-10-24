import 'package:flutter/material.dart';

class AppDimensions {
  static const EdgeInsets smallPadding = EdgeInsets.all(8.0);
  static const EdgeInsets mediumPadding = EdgeInsets.all(16.0);
  static const EdgeInsets largePadding = EdgeInsets.all(24.0);

  static const EdgeInsets smallMargin = EdgeInsets.all(8.0);
  static const EdgeInsets mediumMargin = EdgeInsets.all(16.0);
  static const EdgeInsets largeMargin = EdgeInsets.all(24.0);

  static const Duration shortDuration = Duration(milliseconds: 300);
  static const Duration mediumDuration = Duration(milliseconds: 500);
  static const Duration longDuration = Duration(seconds: 1);
  static const Duration splashDuration = Duration(seconds: 3);

  static const BorderRadius smallRadius = BorderRadius.all(Radius.circular(8));
  static const BorderRadius mediumRadius =
      BorderRadius.all(Radius.circular(16));
  static const BorderRadius largeRadius = BorderRadius.all(Radius.circular(24));
  static const double cardElevation = 4.0;

  static const double defaultSizedBox = 16.0;
  static const EdgeInsets onboardTextHorizontalPadding =
      EdgeInsets.symmetric(horizontal: 48);
  static const double onboardTitleTextSize = 24.0;
  static const double onboardDescTextSize = 12.0;
  static const double forwardIconsPadding = 32.0;

  static const double buttonWidth = 350.0;
  static const double buttonHeight = 5.0;
}

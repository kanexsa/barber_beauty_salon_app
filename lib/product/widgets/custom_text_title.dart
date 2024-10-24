import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppDimensions.onboardTitleTextSize),
    );
  }
}

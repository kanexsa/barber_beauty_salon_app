import 'package:barber_beauty_salon_app/core/constants/app_colors.dart';
import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomDescTitleText extends StatelessWidget {
  const CustomDescTitleText({
    super.key,
    required this.descText,
  });

  final String descText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimensions.onboardTextHorizontalPadding,
      child: Text(
        descText,
        style: const TextStyle(
            fontSize: AppDimensions.onboardDescTextSize,
            color: AppColors.dividerColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}

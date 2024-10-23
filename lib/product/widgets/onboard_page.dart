import 'package:barber_beauty_salon_app/core/constants/app_colors.dart';
import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage(
      {super.key,
      required this.imagePath,
      required this.titleText,
      required this.descText});

  final String imagePath;
  final String titleText;
  final String descText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          Padding(
            padding: AppDimensions.onboardTextHorizontalPadding,
            child: Text(
              titleText,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.onboardTitleTextSize),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          Padding(
            padding: AppDimensions.onboardTextHorizontalPadding,
            child: Text(
              descText,
              style: const TextStyle(
                  fontSize: AppDimensions.onboardDescTextSize,
                  color: AppColors.dividerColor),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

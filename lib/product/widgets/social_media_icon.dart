import 'package:barber_beauty_salon_app/core/constants/app_colors.dart';
import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.dividerColor),
          borderRadius: AppDimensions.largeRadius),
      child: CircleAvatar(
        backgroundColor: AppColors.textOnPrimary,
        child: Icon(icon),
      ),
    );
  }
}

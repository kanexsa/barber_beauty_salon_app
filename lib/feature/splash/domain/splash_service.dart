import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:barber_beauty_salon_app/core/routing/route_constant.dart';
import 'package:flutter/material.dart';

class SplashService {
  void startSplashTimer(BuildContext context) {
    Future.delayed(AppDimensions.splashDuration, () {
      Navigator.of(context).pushReplacementNamed(RouteConstant.onboard);
    });
  }
}

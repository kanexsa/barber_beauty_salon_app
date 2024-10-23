import 'package:barber_beauty_salon_app/core/constants/app_strings.dart';
import 'package:barber_beauty_salon_app/core/routing/route_constant.dart';
import 'package:barber_beauty_salon_app/feature/onboard/presentation/onboard_screen.dart';
import 'package:barber_beauty_salon_app/feature/signin/presentation/signin_screen.dart';
import 'package:barber_beauty_salon_app/feature/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteConstant.onboard:
        return MaterialPageRoute(
          builder: (context) => OnBoardScreen(),
        );
      case RouteConstant.signin:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text(AppStrings.notFoundRouteText)),
          ),
        );
    }
  }
}

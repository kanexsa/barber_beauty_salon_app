import 'package:barber_beauty_salon_app/feature/splash/domain/splash_service.dart';
import 'package:barber_beauty_salon_app/product/assets/asset_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashService().startSplashTimer(context);
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            AssetManager.splash,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}

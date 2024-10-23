import 'package:barber_beauty_salon_app/core/routing/route_constant.dart';
import 'package:barber_beauty_salon_app/core/routing/route_manager.dart';
import 'package:barber_beauty_salon_app/feature/onboard/application/onboard_bloc.dart';
import 'package:barber_beauty_salon_app/feature/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardBloc(),
      child: const MaterialApp(
        initialRoute: RouteConstant.splash,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}

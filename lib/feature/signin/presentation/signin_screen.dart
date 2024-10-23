import 'package:barber_beauty_salon_app/core/constants/app_colors.dart';
import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:barber_beauty_salon_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            AppStrings.createAccount,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppDimensions.onboardTitleTextSize),
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          const Padding(
            padding: AppDimensions.onboardTextHorizontalPadding,
            child: Text(
              AppStrings.createAccountDesc,
              style: TextStyle(
                  fontSize: AppDimensions.onboardDescTextSize,
                  color: AppColors.dividerColor),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox * 4,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.email),
                SizedBox(
                  height: AppDimensions.defaultSizedBox / 2,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: AppStrings.emailHintText,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: AppDimensions.defaultSizedBox,
                ),
                Text(AppStrings.password),
                SizedBox(
                  height: AppDimensions.defaultSizedBox / 2,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: AppStrings.passwordHintText,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox / 2,
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              AppStrings.forgotPassword,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.redSkipText,
                  fontSize: AppDimensions.onboardDescTextSize,
                  color: AppColors.redSkipText),
            ),
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
                onPressed: () {}, child: const Text(AppStrings.signIn)),
          )
        ],
      ),
    );
  }
}

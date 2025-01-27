import 'package:barber_beauty_salon_app/core/constants/app_colors.dart';
import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:barber_beauty_salon_app/core/constants/app_strings.dart';
import 'package:barber_beauty_salon_app/core/routing/route_constant.dart';
import 'package:barber_beauty_salon_app/product/widgets/custom_desc_title_text.dart';
import 'package:barber_beauty_salon_app/product/widgets/custom_text_title.dart';
import 'package:barber_beauty_salon_app/product/widgets/social_media_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Column(
              children: [
                CustomTextTitle(
                  title: AppStrings.signIn,
                ),
                SizedBox(
                  height: AppDimensions.defaultSizedBox,
                ),
                CustomDescTitleText(
                  descText: AppStrings.signInDesc,
                ),
              ],
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
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.redSkipText,
                      fontSize: AppDimensions.onboardDescTextSize,
                      color: AppColors.redSkipText),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(AppColors.redSkipText),
                    fixedSize: WidgetStatePropertyAll(Size(
                        AppDimensions.buttonWidth,
                        AppDimensions.buttonHeight))),
                child: const Text(
                  AppStrings.signIn,
                  style: TextStyle(color: AppColors.background),
                ),
              )),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 20,
                child: Divider(
                  indent: 25,
                ),
              ),
              SizedBox(
                child: Text(
                  AppStrings.orSignInWith,
                  style: TextStyle(
                      fontSize: AppDimensions.onboardDescTextSize,
                      color: AppColors.dividerColor),
                ),
              ),
              SizedBox(
                width: 100,
                height: 20,
                child: Divider(
                  endIndent: 25,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialMediaIcon(icon: FontAwesomeIcons.apple),
              SizedBox(
                width: AppDimensions.defaultSizedBox,
              ),
              SocialMediaIcon(icon: FontAwesomeIcons.google),
              SizedBox(
                width: AppDimensions.defaultSizedBox,
              ),
              SocialMediaIcon(icon: FontAwesomeIcons.facebookF),
            ],
          ),
          const SizedBox(
            height: AppDimensions.defaultSizedBox,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppStrings.alreadyHaveAnAccount,
                style: TextStyle(fontSize: AppDimensions.onboardDescTextSize),
              ),
              InkWell(
                onTap: () {
                  _navSignUp(context);
                },
                child: const Text(
                  AppStrings.signIn,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.redSkipText,
                      fontSize: AppDimensions.onboardDescTextSize,
                      color: AppColors.redSkipText),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _navSignUp(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(RouteConstant.signup, (route) => false);
  }
}

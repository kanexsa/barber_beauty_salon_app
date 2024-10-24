import 'package:barber_beauty_salon_app/core/constants/app_colors.dart';
import 'package:barber_beauty_salon_app/core/constants/app_dimensions.dart';
import 'package:barber_beauty_salon_app/core/constants/app_strings.dart';
import 'package:barber_beauty_salon_app/core/routing/route_constant.dart';
import 'package:barber_beauty_salon_app/feature/onboard/application/onboard_bloc.dart';
import 'package:barber_beauty_salon_app/feature/onboard/application/onboard_event.dart';
import 'package:barber_beauty_salon_app/feature/onboard/application/onboard_state.dart';
import 'package:barber_beauty_salon_app/feature/onboard/domain/onboard_page_enum.dart';
import 'package:barber_beauty_salon_app/feature/onboard/domain/onboard_page_model.dart';
import 'package:barber_beauty_salon_app/product/widgets/onboard_page.dart';
import 'package:barber_beauty_salon_app/product/assets/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardScreen extends StatelessWidget {
  OnBoardScreen({super.key});

  final List<OnboardPageModel> assetList = [
    OnboardPageModel(
      imagePath: AssetManager.onboardFirst,
      title: AppStrings.onboardScreenTextFirst,
      description: AppStrings.onboardScreenDescTextFirst,
    ),
    OnboardPageModel(
      imagePath: AssetManager.onboardSecond,
      title: AppStrings.onboardScreenTextSecond,
      description: AppStrings.onboardScreenDescTextSecond,
    ),
    OnboardPageModel(
      imagePath: AssetManager.onboardThird,
      title: AppStrings.onboardScreenTextThird,
      description: AppStrings.onboardScreenDescTextThird,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardBloc, OnboardState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              state.currentPage != OnboardPageEnum.third
                  ? TextButton(
                      onPressed: () {
                        _navSignUp(context);
                      },
                      child: const Text(
                        AppStrings.skipText,
                        style: TextStyle(color: AppColors.redSkipText),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnboardPage(
                imagePath: assetList[state.currentPage.index].imagePath,
                titleText: assetList[state.currentPage.index].title,
                descText: assetList[state.currentPage.index].description,
              ),
              // const SizedBox(height: AppDimensions.defaultSizedBox * 8),
              _buildNavigationButtons(context, state),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavigationButtons(BuildContext context, OnboardState state) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDimensions.forwardIconsPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (state.currentPage != OnboardPageEnum.first)
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.redSkipText),
                  borderRadius: AppDimensions.largeRadius),
              child: CircleAvatar(
                backgroundColor: AppColors.background,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: AppColors.redSkipText,
                  onPressed: () {
                    BlocProvider.of<OnboardBloc>(context)
                        .add(OnboardPreviousPage());
                  },
                ),
              ),
            )
          else
            const SizedBox(width: 56),
          _buildPageIndicators(state),
          CircleAvatar(
            backgroundColor: AppColors.redSkipText,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward),
              color: AppColors.background,
              onPressed: () {
                BlocProvider.of<OnboardBloc>(context).add(OnboardNextPage());
                if (state.currentPage == OnboardPageEnum.third) {
                  _navSignUp(context);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _navSignUp(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(RouteConstant.signup, (route) => false);
  }

  Widget _buildPageIndicators(OnboardState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: OnboardPageEnum.values.map((page) {
        return AnimatedContainer(
          duration: AppDimensions.shortDuration,
          curve: Curves.easeInOut,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: state.currentPage == page ? 16 : 10,
          height: state.currentPage == page ? 16 : 10,
          decoration: BoxDecoration(
            color: state.currentPage == page
                ? AppColors.redSkipText
                : AppColors.dividerColor,
            shape: BoxShape.circle,
          ),
        );
      }).toList(),
    );
  }
}

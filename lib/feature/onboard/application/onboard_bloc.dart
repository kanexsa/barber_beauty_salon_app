import 'package:barber_beauty_salon_app/feature/onboard/application/onboard_event.dart';
import 'package:barber_beauty_salon_app/feature/onboard/application/onboard_state.dart';
import 'package:barber_beauty_salon_app/feature/onboard/domain/onboard_page_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc()
      : super(const OnboardState(currentPage: OnboardPageEnum.first)) {
    on<OnboardNextPage>((event, emit) {
      if (state.currentPage != OnboardPageEnum.third) {
        emit(state.copyWith(
            currentPage: OnboardPageEnum.values[state.currentPage.index + 1]));
      }
    });

    on<OnboardPreviousPage>((event, emit) {
      if (state.currentPage != OnboardPageEnum.first) {
        emit(state.copyWith(
            currentPage: OnboardPageEnum.values[state.currentPage.index - 1]));
      }
    });
  }
}

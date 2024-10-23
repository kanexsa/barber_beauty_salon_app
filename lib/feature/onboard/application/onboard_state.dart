// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:barber_beauty_salon_app/feature/onboard/domain/onboard_page_enum.dart';
import 'package:equatable/equatable.dart';

class OnboardState extends Equatable {
  final OnboardPageEnum currentPage;

  const OnboardState({required this.currentPage});

  OnboardState copyWith({
    OnboardPageEnum? currentPage,
  }) {
    return OnboardState(
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [currentPage];
}

import 'package:equatable/equatable.dart';

abstract class OnboardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnboardNextPage extends OnboardEvent {}

class OnboardPreviousPage extends OnboardEvent {}

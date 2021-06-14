import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeInProgressState extends HomeState {}

class HomeSuccessState extends HomeState {}

class HomeFailureState extends HomeState {}

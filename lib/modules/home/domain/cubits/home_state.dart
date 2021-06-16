import 'package:equatable/equatable.dart';
import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';

class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeInProgressState extends HomeState {}

class HomeSuccessState extends HomeState {
  final SummaryModel summary;
  HomeSuccessState(this.summary);

  @override
  List<Object> get props => [summary];
}

class HomeFailureState extends HomeState {}

class EnvironmentFailureState extends HomeState {}

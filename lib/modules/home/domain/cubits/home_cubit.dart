import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql_example/modules/home/domain/use_cases/get_summary_use_case.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetSummaryUseCase _getSummaryUseCase;
  HomeCubit(this._getSummaryUseCase) : super(HomeInitialState());

  void getSummary() async {
    emit(HomeInProgressState());
    try {
      final summary = await _getSummaryUseCase.call();
      emit(HomeSuccessState());
    } catch (_) {
      emit(HomeFailureState());
    }
  }
}

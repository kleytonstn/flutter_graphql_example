import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';
import 'package:flutter_graphql_example/modules/home/data/repositories/home_repository.dart';

class GetSummaryUseCase {
  final HomeRepository repository;
  GetSummaryUseCase(this.repository);

  Future<SummaryModel> call() {
    return repository.getSummary();
  }
}

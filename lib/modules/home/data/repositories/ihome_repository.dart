import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';

abstract class IHomeRepository {
  Future<SummaryModel> getSummary();
}

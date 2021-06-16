import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';
import 'package:flutter_graphql_example/modules/home/data/repositories/ihome_repository.dart';
import 'package:flutter_graphql_example/modules/home/data/services/ihome_service.dart';

class HomeRepository implements IHomeRepository {
  final IHomeService service;
  HomeRepository(this.service);

  Future<SummaryModel> getSummary() async {
    final response = await service.getSummary();
    return SummaryModel.fromJson(response);
  }
}

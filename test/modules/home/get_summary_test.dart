import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';
import 'package:flutter_graphql_example/modules/home/data/repositories/home_repository.dart';
import 'package:flutter_graphql_example/modules/home/data/repositories/ihome_repository.dart';
import 'package:flutter_graphql_example/modules/home/data/services/home_service.dart';
import 'package:flutter_graphql_example/modules/home/data/services/ihome_service.dart';
import 'package:flutter_graphql_example/modules/home/domain/use_cases/get_summary_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/mockito.dart';

import '../../data/mocks.dart';

class GraphQlClientMock extends Mock implements GraphQLClient {}

main() {
  GraphQLClient graphQL;
  IHomeRepository repository;
  IHomeService service;
  GetSummaryUseCase sut;
  setUp(() {
    graphQL = GraphQlClientMock();
    service = HomeService(graphQL);
    repository = HomeRepository(service);
    sut = GetSummaryUseCase(repository);
    when(graphQL.query(any)).thenAnswer((_) => Future.value(QueryResult(
        data: summaryResponseMock, source: QueryResultSource.network)));
  });

  test('should successfully get the summary informations', () async {
    final response = await sut.call();
    expect(response, isNotNull);
    expect(response, isA<SummaryModel>());
    expect(response, SummaryModel.fromJson(singleSummaryMock));
  });
}

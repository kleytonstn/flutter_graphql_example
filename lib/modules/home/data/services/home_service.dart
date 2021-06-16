import 'package:flutter_graphql_example/modules/home/data/constants/queries.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:flutter_graphql_example/modules/home/data/services/ihome_service.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeService implements IHomeService {
  final GraphQLClient graphQLClient;
  HomeService(this.graphQLClient);

  Future<Map<String, dynamic>> getSummary() async {
    final result =
        await graphQLClient.query(QueryOptions(document: gql(summaryQuery)));
    final summaries = result.data[wealthSummaryKey] as List;
    return summaries.first;
  }
}

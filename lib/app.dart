import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/endpoints.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:flutter_graphql_example/modules/home/data/repositories/home_repository.dart';
import 'package:flutter_graphql_example/modules/home/data/services/home_service.dart';
import 'package:flutter_graphql_example/modules/home/domain/cubits/home_cubit.dart';
import 'package:flutter_graphql_example/modules/home/domain/use_cases/get_summary_use_case.dart';
import 'package:flutter_graphql_example/modules/home/ui/pages/home_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final secret = const String.fromEnvironment(secretKey);
    final graphQLClient = GraphQLClient(
      cache: GraphQLCache(),
      link: HttpLink(summaryEndpoint, defaultHeaders: {
        secretHeaderKey: secret,
      }),
    );

    return Provider<HomeCubit>(
      create: (context) => HomeCubit(
          GetSummaryUseCase(HomeRepository(HomeService(graphQLClient)))),
      child: MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(),
      ),
    );
  }
}

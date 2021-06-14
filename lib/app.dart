import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:flutter_graphql_example/modules/home/data/repositories/home_repository.dart';
import 'package:flutter_graphql_example/modules/home/domain/cubits/home_cubit.dart';
import 'package:flutter_graphql_example/modules/home/domain/use_cases/get_summary_use_case.dart';
import 'package:flutter_graphql_example/modules/home/ui/pages/home_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<HomeCubit>(
      create: (context) => HomeCubit(GetSummaryUseCase(HomeRepository())),
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(),
      ),
    );
  }
}

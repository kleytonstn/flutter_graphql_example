import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:flutter_graphql_example/modules/home/domain/cubits/home_cubit.dart';
import 'package:flutter_graphql_example/modules/home/domain/cubits/home_state.dart';
import 'package:flutter_graphql_example/modules/home/ui/views/home_failure_view.dart';
import 'package:flutter_graphql_example/modules/home/ui/views/home_loading_view.dart';
import 'package:flutter_graphql_example/modules/home/ui/views/home_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final cubit = Provider.of<HomeCubit>(context);
    return Scaffold(
      appBar: AppBar(title: Text(appTitle)),
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is HomeInitialState) {
            cubit.getSummary();
          } else if (state is HomeFailureState) {
            return HomeFailureView();
          } else if (state is HomeSuccessState) {
            return HomeView(summary: state.summary);
          }
          return HomeLoadingView();
        },
      ),
    );
  }
}

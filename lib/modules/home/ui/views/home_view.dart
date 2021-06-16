import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/spaces.dart';
import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/summary_card.dart';

class HomeView extends StatefulWidget {
  final SummaryModel summary;

  const HomeView({Key key, this.summary}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Center(child: SummaryCard(widget.summary)),
    );
  }
}

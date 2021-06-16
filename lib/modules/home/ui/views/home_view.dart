import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';

class HomeView extends StatefulWidget {
  final SummaryModel summary;

  const HomeView({Key key, this.summary}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    print(widget.summary.toJson());
    return Container(color: Colors.blue);
  }
}

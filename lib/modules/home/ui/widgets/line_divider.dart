import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/values.dart';

class LineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: lineHeight,
      color: lineColor,
    );
  }
}

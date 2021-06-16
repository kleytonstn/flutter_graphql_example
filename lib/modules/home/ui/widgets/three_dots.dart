import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/sizes.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/values.dart';

class ThreeDots extends StatelessWidget {
  Widget dot() {
    return Container(
      height: dotSize,
      width: dotSize,
      decoration: BoxDecoration(
        color: dotColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: threeDotsHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [dot(), dot(), dot()],
      ),
    );
  }
}

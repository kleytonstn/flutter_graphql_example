import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/values.dart';

class ShimmerContainer extends StatelessWidget {
  final double width;
  final double height;
  final BoxDecoration decoration;

  const ShimmerContainer({Key key, this.width, this.height, this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: shimmerOpacity,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? shimmerDefaultHeight,
        decoration: decoration ??
            BoxDecoration(
              color: shimmerDefaultColor,
              borderRadius: BorderRadius.circular(shimmerBorderRadius),
            ),
      ),
    );
  }
}

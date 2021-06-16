import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/sizes.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/values.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/shimmer_container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerDetailRow extends StatelessWidget {
  final String label;

  const ShimmerDetailRow({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontSize: bodyTextFontSize,
            color: darkGreyColor,
            fontWeight: FontWeight.normal,
          ),
        ),
        Shimmer.fromColors(
          child: ShimmerContainer(
              height: shimmerDetailHeight, width: shimmerDetailWidth),
          baseColor: shimmerBaseColor,
          highlightColor: shimmerHighlightColor,
        ),
      ],
    );
  }
}

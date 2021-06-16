import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/sizes.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/spaces.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/values.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/line_divider.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/shimmer_container.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/shimmer_detail_row.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/three_dots.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class HomeLoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Center(
        child: Container(
          height: cardHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mediumMargin, vertical: mediumMargin),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      appTitle,
                      style: GoogleFonts.montserrat(
                        color: darkBlueColor,
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    ThreeDots(),
                  ],
                ),
                SizedBox(height: largeSpace),
                Center(
                    child: Text(
                  investedValue,
                  style: GoogleFonts.montserrat(
                    fontSize: bodyTextFontSize,
                    color: darkGreyColor,
                  ),
                )),
                SizedBox(height: smallSpace),
                Center(
                  child: Shimmer.fromColors(
                    child: ShimmerContainer(
                        height: shimmerValueHeight, width: shimmerValueWidth),
                    baseColor: shimmerBaseColor,
                    highlightColor: shimmerHighlightColor,
                  ),
                ),
                SizedBox(height: regularSpace),
                SizedBox(height: smallSpace),
                ShimmerDetailRow(label: profitability),
                SizedBox(height: smallSpace),
                ShimmerDetailRow(label: cdi),
                SizedBox(height: smallSpace),
                ShimmerDetailRow(label: earnings),
                SizedBox(height: regularSpace),
                LineDivider(),
                SizedBox(height: regularSpace),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                spreadRadius: spreadRadius,
                blurRadius: blueRadius,
                offset: shadowOffset,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/sizes.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/values.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      child: Center(
          child: Text(
        seeMore,
        style: GoogleFonts.montserrat(
          fontSize: bodyTextFontSize,
          color: darkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonBorderRadius),
        border: Border.all(color: darkBlueColor, width: lineHeight),
      ),
    );
  }
}

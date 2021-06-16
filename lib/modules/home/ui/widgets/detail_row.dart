import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const DetailRow({Key key, this.label, this.value}) : super(key: key);

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
        Text(
          value,
          style: GoogleFonts.montserrat(
            fontSize: detailMoneyTextSize,
            color: darkBlueColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

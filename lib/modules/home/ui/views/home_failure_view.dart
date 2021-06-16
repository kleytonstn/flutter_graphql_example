import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/sizes.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFailureView extends StatefulWidget {
  @override
  _HomeFailureViewState createState() => _HomeFailureViewState();
}

class _HomeFailureViewState extends State<HomeFailureView> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errorMessage,
      style: GoogleFonts.montserrat(
        fontSize: bodyTextFontSize,
        color: darkGreyColor,
      ),
    ));
  }
}

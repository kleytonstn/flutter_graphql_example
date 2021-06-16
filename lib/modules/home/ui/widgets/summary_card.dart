import 'package:flutter/material.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/colors.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/sizes.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/spaces.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/strings.dart';
import 'package:flutter_graphql_example/modules/home/data/constants/values.dart';
import 'package:flutter_graphql_example/modules/home/data/models/summary_model.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/custom_button.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/detail_row.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/line_divider.dart';
import 'package:flutter_graphql_example/modules/home/ui/widgets/three_dots.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryCard extends StatelessWidget {
  final SummaryModel summary;
  const SummaryCard(this.summary);

  @override
  Widget build(BuildContext context) {
    final money = FlutterMoneyFormatter(
        amount: summary.total.toDouble(),
        settings: MoneyFormatterSettings(
          symbol: moneySymbol,
          thousandSeparator: '.',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 2,
          // compactFormatType: CompactFormatType.sort,
        ));
    final profitabilityFormatted = FlutterMoneyFormatter(
        amount: summary.profitability,
        settings: MoneyFormatterSettings(
          symbol: percentSymbol,
          thousandSeparator: '',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 3,
          // compactFormatType: CompactFormatType.sort,
        ));
    final cdiFormatted = FlutterMoneyFormatter(
        amount: summary.cdi,
        settings: MoneyFormatterSettings(
          symbol: percentSymbol,
          thousandSeparator: '',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 2,
          // compactFormatType: CompactFormatType.sort,
        ));
    final gainFormatted = FlutterMoneyFormatter(
        amount: summary.gain,
        settings: MoneyFormatterSettings(
          symbol: moneySymbol,
          thousandSeparator: '.',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 2,
          // compactFormatType: CompactFormatType.sort,
        ));
    return Container(
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
                child: Text(
              money.output.symbolOnLeft,
              style: GoogleFonts.montserrat(
                fontSize: moneyTextSize,
                color: darkBlueColor,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(height: largeSpace),
            DetailRow(
                label: profitability,
                value: profitabilityFormatted.output.symbolOnRight),
            SizedBox(height: smallSpace),
            DetailRow(label: cdi, value: cdiFormatted.output.symbolOnRight),
            SizedBox(height: smallSpace),
            DetailRow(
                label: earnings, value: gainFormatted.output.symbolOnLeft),
            SizedBox(height: regularSpace),
            LineDivider(),
            SizedBox(height: regularSpace),
            Align(alignment: Alignment.bottomRight, child: CustomButton()),
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
    );
  }
}

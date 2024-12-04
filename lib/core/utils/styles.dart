import 'package:bookly_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const titleStyle18 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final bookTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.lora().fontFamily,
  );
  static const bookAuthorStyle = TextStyle(
    fontSize: 14,
    color: AppColors.whiteGreyColor,
    fontWeight: FontWeight.w500,
  );
  static const bookPriceStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const bookRateStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const ratingNumberStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
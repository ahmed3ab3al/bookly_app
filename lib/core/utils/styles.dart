import 'package:bookly_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const titleStyle18 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const bookNameDetailsStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static const bookTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
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
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const ratingNumberStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.whiteGreyColor,
  );
  static const buttonTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
}

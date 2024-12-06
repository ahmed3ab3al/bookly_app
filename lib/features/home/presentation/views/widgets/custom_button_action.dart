import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonAction extends StatelessWidget {
  const CustomButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
            text: '19.99 €',
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              bottomLeft: Radius.circular(14),
            ),
            padding: 10,
            style: Styles.buttonTextStyle.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold
            )),
        CustomButton(
            text: 'Free preview',
            color: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
            padding: 10,
            style: Styles.buttonTextStyle.copyWith(
              fontFamily: GoogleFonts.aBeeZee().fontFamily,
              color: Colors.white,

            )),


      ],
    );
  }
}

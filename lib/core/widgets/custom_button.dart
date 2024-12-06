import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed, required this.color, required this.borderRadius, required this.padding, required this.style});

  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final BorderRadius borderRadius;
  final double padding;
  final TextStyle style;



  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
         // width: MediaQuery.of(context).size.width *.4,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius
          ),
          child:  Center(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Text(
                text,
                style: style
              ),
            ),
          )
        ),
      ),
    );
  }
}

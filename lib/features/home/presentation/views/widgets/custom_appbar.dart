import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  const CustomAppBar({
    super.key, required this.widget, required this.icon,

  });
 final Widget widget;
 final  Widget icon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 25),
      child: Row(
        children: [
          widget,
          const Spacer(),
         icon
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.aspectRatio});
final double aspectRatio ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(AppAssets.test),
                fit: BoxFit.cover)
        ),
      ),
    );
  }
}

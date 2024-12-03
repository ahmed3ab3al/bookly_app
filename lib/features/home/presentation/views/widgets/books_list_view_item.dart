import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/3.5,
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

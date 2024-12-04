import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3.5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(AppAssets.test), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Book Name Book NameBook NameBook NameBook NameBook NameBook NameBook Name',
                    style: Styles.bookTitleStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 2,),
                Text(
                  'Author Name',
                  style: Styles.bookAuthorStyle,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 € ',
                      style: Styles.bookPriceStyle,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

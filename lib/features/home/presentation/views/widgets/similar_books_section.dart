import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_details_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.bookRateStyle.copyWith(fontSize: 14),
          ),
        ),
        SizedBox(
          height: 16,),
        BooksDetailsListView(),
        SizedBox(height: 30,)
      ],
    );
  }
}

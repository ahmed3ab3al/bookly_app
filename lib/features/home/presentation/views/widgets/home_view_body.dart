import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';

import 'best_seller_item.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            BooksListView(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Best Seller',
              style: Styles.titleStyle18,
            ),
            SizedBox(
              height: 20,
            ),
            const BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}


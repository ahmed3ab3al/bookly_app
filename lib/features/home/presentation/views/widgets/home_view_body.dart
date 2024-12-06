import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    widget:  Image.asset(
                      AppAssets.logo,
                      height: 20,
                    ),
                    icon:  IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.magnifyingGlass,
                          size: 20,
                        ))
                  ),
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
                ],
              ),
            ),
            SliverFillRemaining(
              child: BestSellerListView(),
            )
          ],
        ),
      ),
    );
  }
}


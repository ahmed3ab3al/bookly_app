import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                CustomAppBar(
                  widget: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.xmark,
                        size: 25,
                      )),
                  icon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.cartShopping,
                        size: 22,
                      )),
                ),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 60,
                  ),
                ),
                SimilarBooksSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'books_list_view_item.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListViewItem(
              aspectRatio: 2.4 / 3.4,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'The Jungle Book',
            style: Styles.bookNameDetailsStyle.copyWith(
              fontFamily: GoogleFonts.lora().fontFamily,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.bookAuthorStyle.copyWith(fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.solidStar,
                  size: 15, color: Color(0xffFFDD4F)),
              SizedBox(
                width: 6,
              ),
              Text(
                '4.8',
                style: Styles.bookRateStyle,
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                '(2000)',
                style: Styles.ratingNumberStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}

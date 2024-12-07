import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating_details.dart';
import 'custom_button_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: ListViewItem(
            aspectRatio: 2.2 / 3,
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
          style: Styles.bookAuthorStyle
              .copyWith(fontStyle: FontStyle.italic, fontSize: 18),
        ),
        SizedBox(
          height: 14,
        ),
        BookRatingDetails(),
        SizedBox(
          height: 20,
        ),
        CustomButtonAction(),
      ],
    );
  }
}

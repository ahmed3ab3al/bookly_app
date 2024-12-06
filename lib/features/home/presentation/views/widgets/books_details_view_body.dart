import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'books_list_view_item.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 20,),
          CustomAppBar(
            widget: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.xmark,
                  size: 20,
                )),
            icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartShopping,
                  size: 20,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListViewItem(
              aspectRatio: 2.3 / 3.5,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Book Namddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.bookNameDetailsStyle,),
              ),
            ],
          )

        ],
      ),
    );
  }
}

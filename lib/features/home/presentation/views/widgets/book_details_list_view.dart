import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsListView extends StatelessWidget {
  const BooksDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.2,
      child: ListView.builder(
        padding:  EdgeInsets.zero,
        itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.only(right:15),
            child: ListViewItem(
              aspectRatio: 2.3/3.5,
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.booksDetailsView);
      },
      child: SizedBox(
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book Name Book NameBook NameBook NameBook NameBook NameBook NameBook Name',
                      style: Styles.bookTitleStyle.copyWith(
                        fontFamily: GoogleFonts.lora().fontFamily,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
                        Spacer(),
                        Icon(FontAwesomeIcons.solidStar,
                            size: 15, color: Color(0xffFFDD4F)),
                        SizedBox(width: 6,),
                        Text(
                          '4.8',
                          style: Styles.bookRateStyle,
                        ),
                        SizedBox(width: 9,),
                        Text('(2000)',style: Styles.ratingNumberStyle,)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
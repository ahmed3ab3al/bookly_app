import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRatingDetails extends StatelessWidget {
  const BookRatingDetails({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

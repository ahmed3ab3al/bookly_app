import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(top: 12),
        child: BestSellerListViewItem(),
      );
    });
  }
}

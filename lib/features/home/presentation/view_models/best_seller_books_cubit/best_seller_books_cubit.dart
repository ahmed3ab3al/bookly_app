import 'package:bookly_app/features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit() : super(BestSellerBooksInitial());

  static BestSellerBooksCubit get(context) => BlocProvider.of(context);

}

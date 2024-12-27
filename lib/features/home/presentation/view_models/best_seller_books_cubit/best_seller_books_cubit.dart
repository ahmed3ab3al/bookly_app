import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());

  static BestSellerBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.getNewestData();
    result.fold((failure) {
      emit(BestSellerBooksFailure(failure.errorModel.message));
    }, (books) {
      emit(BestSellerBooksSuccess(books));
    });
  }

}

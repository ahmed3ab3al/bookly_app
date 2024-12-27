import '../../../data/models/Book_model.dart';

abstract class BestSellerBooksState {}

class BestSellerBooksInitial extends BestSellerBooksState {}
class BestSellerBooksLoading extends BestSellerBooksState {}
class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookModel> books;
  BestSellerBooksSuccess(this.books);
}
class BestSellerBooksFailure extends BestSellerBooksState {
  final String errorMessage;
  BestSellerBooksFailure(this.errorMessage);
}

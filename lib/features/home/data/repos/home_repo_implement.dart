import 'package:bookly_app/core/api/api_helper.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/Book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/api/end_points.dart';
import '../../../../core/errors/exception.dart';

class HomeRepoImplement  implements HomeRepo{
  final ApiHelper apiHelper;
  HomeRepoImplement(this.apiHelper);
  @override
  Future<Either<Failure, List<BookModel>>> getHomeData() async{
    try {
      final response = await apiHelper.get(
          EndPoints.newest
      );
      List<BookModel> books = [];
      for (var books in response['items']) {
        books.add(BookModel.fromJson(books));
      }
      return right(books);

    } on ServerException catch (e) {
      return left(ServerFailure());
    }
  }


  @override
  Future<Either<Failure, List<BookModel>>> getNewestData() async {
      try {
        final response = await apiHelper.get(
            EndPoints.newest
        );
        List<BookModel> books = [];
        for (var books in response['items']) {
          books.add(BookModel.fromJson(books));
        }
        return right(books);

      } on ServerException catch (e) {
        return left(ServerFailure());
      }
    }

  }

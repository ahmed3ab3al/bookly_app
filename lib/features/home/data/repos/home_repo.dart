import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

 Future<Either<Failure,List<BookModel>>> getHomeData();
 Future<Either<Failure,List<BookModel>>> getBestSellerData();



}
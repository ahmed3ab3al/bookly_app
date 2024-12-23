import 'package:bookly_app/core/errors/exception.dart';
import 'package:bookly_app/features/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

 Future<Either<ServerException,List<BookModel>>> getHomeData();
 Future<Either<ServerException,List<BookModel>>> getNewestData();



}
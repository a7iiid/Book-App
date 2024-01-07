import 'package:book_app/Featuers/home/data/models/book/book.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestSellerBook();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook();
}

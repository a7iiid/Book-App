import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/models/book/book.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBook();
}

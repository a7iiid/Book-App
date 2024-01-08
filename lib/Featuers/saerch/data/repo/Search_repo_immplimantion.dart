import 'package:book_app/Featuers/home/data/repo/home_repo.dart';
import 'package:book_app/Featuers/saerch/data/repo/search_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/models/book/book.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplement implements SearchRepo {
  @override
  final ApiService apiService;

  SearchRepoImplement(this.apiService);

  Future<Either<Failure, List<BookModel>>> fetchSearchBook() async {
    try {
      var data = await apiService.get(
          Url: 'volumes?Filtering=free-ebooks &q=title:$SearchTextController');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromMap(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.DioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

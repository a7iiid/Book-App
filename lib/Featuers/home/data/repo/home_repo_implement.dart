import 'package:book_app/Featuers/home/data/models/book/book.dart';
import 'package:book_app/Featuers/home/data/repo/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestSellerBook() async {
    try {
      var data = await apiService.get(
          Url:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
    } on Exception catch (e) {
      // TODO
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() {
    // TODO: implement fetchFeaturedBook
    throw UnimplementedError();
  }
}

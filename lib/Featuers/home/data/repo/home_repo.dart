import 'package:book_app/Featuers/home/data/models/book/book.dart';

abstract class HomeRepo {
  Future<List<BookModel>> fetchBestSellerBook();
  Future<List<BookModel>> fetchFeaturedBook();
}

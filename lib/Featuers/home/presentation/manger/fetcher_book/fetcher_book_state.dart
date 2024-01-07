part of 'fetcher_book_cubit.dart';

sealed class FetcherBookState extends Equatable {
  const FetcherBookState();

  @override
  List<Object> get props => [];
}

final class FetcherBookInitial extends FetcherBookState {}

final class FetcherBookLoading extends FetcherBookState {}

final class FetcherBookFailure extends FetcherBookState {
  final String error;

  const FetcherBookFailure(this.error);
}

final class FetcherBookSuccess extends FetcherBookState {
  final List<BookModel> books;
  const FetcherBookSuccess(this.books);
}

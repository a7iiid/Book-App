part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<BookModel> books;
  SearchSuccess(this.books);
}

final class SearchFailuer extends SearchState {
  final String msgError;
  SearchFailuer(this.msgError);
}

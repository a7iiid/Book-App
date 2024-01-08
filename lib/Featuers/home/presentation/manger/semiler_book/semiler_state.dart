part of 'semiler_cubit.dart';

sealed class SemilerState extends Equatable {
  const SemilerState();

  @override
  List<Object> get props => [];
}

final class SemilerInitial extends SemilerState {}

final class SemilerBookLoading extends SemilerState {}

final class SemilerBookFailure extends SemilerState {
  final String error;

  SemilerBookFailure(this.error);
}

final class SemilerBookSuccess extends SemilerState {
  final List<BookModel> books;
  SemilerBookSuccess(this.books);
}

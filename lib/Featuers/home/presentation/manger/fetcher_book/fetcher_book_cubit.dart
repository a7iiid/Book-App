import 'package:bloc/bloc.dart';
import 'package:book_app/core/models/book/book.dart';
import 'package:book_app/Featuers/home/data/repo/home_repo.dart';
import 'package:book_app/main.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetcher_book_state.dart';

class FetcherBookCubit extends Cubit<FetcherBookState> {
  FetcherBookCubit(this.homeRepo) : super(FetcherBookInitial());

  static get(context) => BlocProvider.of<FetcherBookCubit>(context);

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FetcherBookLoading());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold((failure) {
      emit(FetcherBookFailure(failure.error));
    }, (books) {
      emit(FetcherBookSuccess(books));
    });
  }
}

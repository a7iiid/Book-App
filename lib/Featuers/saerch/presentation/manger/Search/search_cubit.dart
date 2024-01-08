import 'package:bloc/bloc.dart';
import 'package:book_app/Featuers/saerch/data/repo/search_repo.dart';
import 'package:book_app/core/models/book/book.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchrepo) : super(SearchInitial());
  SearchRepo searchrepo;
  static get(context) => BlocProvider.of<SearchCubit>(context);
  Future<void> FetchSerchBook() async {
    emit(SearchLoading());
    var result = await searchrepo.fetchSearchBook();
    result.fold((failure) {
      emit(SearchFailuer(failure.error));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}

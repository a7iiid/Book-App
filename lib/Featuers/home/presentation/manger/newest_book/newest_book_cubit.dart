import 'package:bloc/bloc.dart';
import 'package:book_app/Featuers/home/data/models/book/book.dart';
import 'package:book_app/Featuers/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo;

  static get(context) => BlocProvider.of<NewestBookCubit>(context);

  Future<void> fetchNewestdBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestSellerBook();
    result.fold((failure) {
      emit(NewestBookFailure(failure.error));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}

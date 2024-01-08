import 'package:bloc/bloc.dart';
import 'package:book_app/Featuers/home/data/models/book/book.dart';
import 'package:book_app/Featuers/home/data/repo/home_repo.dart';
import 'package:book_app/Featuers/home/presentation/manger/newest_book/newest_book_cubit.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'semiler_state.dart';

class SemilerCubit extends Cubit<SemilerState> {
  SemilerCubit(this.homeRepo) : super(SemilerInitial());
  final HomeRepo homeRepo;

  static get(context) => BlocProvider.of<NewestBookCubit>(context);

  Future<void> fetchSemilerBooks() async {
    emit(SemilerBookLoading());
    var result = await homeRepo.fetchNewestSellerBook();
    result.fold((failure) {
      emit(SemilerBookFailure(failure.error));
    }, (books) {
      emit(SemilerBookSuccess(books));
    });
  }
}

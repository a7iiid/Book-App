import 'package:book_app/Featuers/home/presentation/manger/fetcher_book/fetcher_book_cubit.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_error_widget.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_listview_item.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_state_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetcherBookListView extends StatelessWidget {
  FetcherBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetcherBookCubit, FetcherBookState>(
      builder: (context, state) {
        if (state is FetcherBookFailure) {
          return CustomErrorWidget(
            ErrorMessages: state.error,
          );
        }
        if (state is FetcherBookSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .28,
            child: ListView.builder(
              itemCount: state.books.length - 1,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomListViewItem(
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                );
              },
            ),
          );
        } else {
          return const CustomStateLoading();
        }
      },
    );
  }
}

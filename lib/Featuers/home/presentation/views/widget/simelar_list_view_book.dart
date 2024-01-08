import 'package:book_app/Featuers/home/presentation/manger/semiler_book/semiler_cubit.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_error_widget.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_listview_item.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_state_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimelarListViewBook extends StatelessWidget {
  const SimelarListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SemilerCubit, SemilerState>(
      builder: (context, state) {
        if (state is SemilerBookFailure) {
          return CustomErrorWidget(
            ErrorMessages: state.error,
          );
        }
        if (state is SemilerBookSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .13,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length - 1,
              itemBuilder: (context, index) {
                return CustomListViewItem(
                    imageUrl:
                        '${state.books[index].volumeInfo!.imageLinks?.thumbnail}',
                    borderRadius: const BorderRadius.all(
                      Radius.circular(9),
                    ));
              },
            ),
          );
        } else {
          return const CustomStateLoading();
        }
      },
    );
    ;
  }
}

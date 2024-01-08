import 'package:book_app/Featuers/home/presentation/views/widget/list_view_newest.dart';
import 'package:book_app/Featuers/saerch/presentation/manger/Search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaerchLestViewResult extends StatelessWidget {
  const SaerchLestViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        print(state);
        if (state is SearchSuccess) {
          return Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BookListViewItem(book: state.books[index]),
                  );
                }),
          );
        }
        if (state is SearchFailuer) {
          return ErrorWidget(state.msgError);
        } else {
          return Text('data');
        }
      },
    );
  }
}

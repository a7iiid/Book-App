import 'package:book_app/Featuers/home/presentation/views/widget/custom_app_bar.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/Fetcher_Book_List_View.dart';
import 'package:book_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'list_view_newest.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                child: CustomAppBar(),
              ),
              FetcherBookListView(),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Newest Book",
                  style: Style.titlemedium18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListViewNewst(),
          ),
        )
      ],
    );
  }
}

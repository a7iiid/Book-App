import 'package:book_app/Featuers/home/presentation/views/widget/custom_app_bar.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_list_view.dart';
import 'package:book_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'list_view_best_seller_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                child: CustomAppBar(),
              ),
              CustomListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Newest Book",
                  style: Style.titlemedium18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ListViewBestSeller(),
          ),
        )
      ],
    );
  }
}

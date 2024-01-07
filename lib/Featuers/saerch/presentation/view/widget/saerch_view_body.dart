import 'package:book_app/Featuers/home/presentation/views/widget/list_view_best_seller_item.dart';
import 'package:book_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'custom_saerch_feild.dart';

class SaerchViewBody extends StatelessWidget {
  const SaerchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        children: [
          SaerchFeild(),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Best Seller",
              style: Style.titlemedium18,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SaerchLestViewResult()
        ],
      ),
    );
  }
}

class SaerchLestViewResult extends StatelessWidget {
  const SaerchLestViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(),
            );
          }),
    );
  }
}

import 'package:book_app/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'custom_saerch_feild.dart';
import 'saerch_lest_view_result.dart';

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
              "Search Result",
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

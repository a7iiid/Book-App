import 'package:book_app/Featuers/home/presentation/views/widget/list_view_newest.dart';
import 'package:flutter/material.dart';

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

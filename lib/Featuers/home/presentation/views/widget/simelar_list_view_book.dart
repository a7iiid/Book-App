import 'package:book_app/Featuers/home/presentation/views/widget/custom_listview_item.dart';
import 'package:flutter/material.dart';

class SimelarListViewBook extends StatelessWidget {
  const SimelarListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .13,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomListViewItem(
              borderRadius: const BorderRadius.all(
            Radius.circular(9),
          ));
        },
      ),
    );
    ;
  }
}

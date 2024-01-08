// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:flutter/material.dart';

import 'package:book_app/Featuers/home/data/models/book/book.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_listview_item.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/list_view_newest.dart';
import 'package:book_app/core/utils/style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'button_book_details.dart';
import 'custom_app_bar_book_details.dart';
import 'simelar_list_view_book.dart';

class BookDetilsBody extends StatelessWidget {
  const BookDetilsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const CustomAppBarBookDetails(),
                  const SizedBox(height: 33),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * .18),
                    child: CustomListViewItem(
                        imageUrl:
                            '${bookdetails!.volumeInfo!.imageLinks!.thumbnail}'),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .6,
                    child: Text(
                      '${bookdetails!.volumeInfo!.title}',
                      style: Style.textstyle30,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      '${bookdetails!.volumeInfo!.authors![0]}',
                      style: Style.textstyle14.copyWith(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const RatingBook(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  const ButtonBookDetails(),
                  const Expanded(
                    child: SizedBox(
                      height: 49,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Style.textstyle14
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SimelarListViewBook(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

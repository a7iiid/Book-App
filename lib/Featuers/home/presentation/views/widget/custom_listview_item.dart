// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app/core/models/book/book.dart';
import 'package:book_app/core/utils/constants/route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:book_app/core/utils/constants/assets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants/constant.dart';

class CustomListViewItem extends StatelessWidget {
  CustomListViewItem(
      {Key? key, this.book, this.borderRadius, required this.imageUrl})
      : super(key: key);
  final BookModel? book;
  final String imageUrl;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.5),
      child: GestureDetector(
        onTap: () {
          bookdetails = book;
          GoRouter.of(context).push(routes.kDetailsView);
        },
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: .7,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress)),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}

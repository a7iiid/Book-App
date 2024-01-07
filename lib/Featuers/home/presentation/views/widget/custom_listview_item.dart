// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:book_app/core/utils/constants/assets.dart';

class CustomListViewItem extends StatelessWidget {
  CustomListViewItem({
    Key? key,
    this.borderRadius,
  }) : super(key: key);
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .7,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(
                  Assets.imagesLogo,
                ),
                fit: BoxFit.fill),
            color: (Colors.white),
            borderRadius:
                borderRadius ?? const BorderRadius.all(Radius.circular(18))),
      ),
    );
  }
}

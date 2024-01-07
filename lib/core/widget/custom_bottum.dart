// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:book_app/core/utils/style.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    Key? key,
    required this.textColor,
    this.bordarRadius,
    required this.backgraundColor,
  }) : super(key: key);
  final Color textColor;
  final BorderRadius? bordarRadius;
  final Color backgraundColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgraundColor,
              shape: RoundedRectangleBorder(
                borderRadius: bordarRadius ?? BorderRadius.circular(16),
              )),
          onPressed: () {},
          child: Text('19.99€',
              style: Style.textstylebutton18.copyWith(
                color: textColor,
              )),
        ),
      ),
    );
  }
}

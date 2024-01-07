import 'package:book_app/core/widget/custom_bottum.dart';
import 'package:flutter/material.dart';

class ButtonBookDetails extends StatelessWidget {
  const ButtonBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomBottom(
          textColor: Colors.black,
          backgraundColor: Colors.white,
          bordarRadius: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        ),
        CustomBottom(
          textColor: Colors.white,
          backgraundColor: Color(0xffEF8262),
          bordarRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )
      ],
    );
  }
}

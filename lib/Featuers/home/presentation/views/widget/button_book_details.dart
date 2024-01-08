import 'package:book_app/core/utils/constants/constant.dart';
import 'package:book_app/core/widget/custom_bottum.dart';
import 'package:book_app/core/widget/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonBookDetails extends StatelessWidget {
  const ButtonBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBottom(
          function: () =>
              UrlLaunch(url: '${bookdetails!.volumeInfo!.infoLink}'),
          text: 'Free',
          textColor: Colors.black,
          backgraundColor: Colors.white,
          bordarRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        ),
        CustomBottom(
          function: () =>
              UrlLaunch(url: '${bookdetails!.volumeInfo!.infoLink}'),
          text: 'Preview',
          textColor: Colors.white,
          backgraundColor: const Color(0xffEF8262),
          bordarRadius: const BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )
      ],
    );
  }
}

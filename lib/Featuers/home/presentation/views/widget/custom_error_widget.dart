// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    Key? key,
    required this.ErrorMessages,
  }) : super(key: key);
  final String ErrorMessages;

  @override
  Widget build(BuildContext context) {
    return Text(ErrorMessages);
  }
}

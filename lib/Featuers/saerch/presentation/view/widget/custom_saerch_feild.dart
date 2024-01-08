import 'package:book_app/Featuers/saerch/presentation/manger/Search/search_cubit.dart';
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:flutter/material.dart';

class SaerchFeild extends StatelessWidget {
  const SaerchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: SearchTextController,
      autofocus: true,
      onSubmitted: (value) {
        SearchCubit.get(context).FetchSerchBook();
      },
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey)),
          hintText: 'Saerch',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24,
              ))),
    );
  }
}

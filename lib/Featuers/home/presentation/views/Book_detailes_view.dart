import 'package:book_app/Featuers/home/data/repo/home_repo_implement.dart';
import 'package:book_app/Featuers/home/presentation/manger/semiler_book/semiler_cubit.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/book_details_body.dart';
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SemilerCubit(homerepo)..fetchSemilerBooks(),
      child: const Scaffold(
        body: BookDetilsBody(),
      ),
    );
  }
}

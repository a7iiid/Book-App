import 'package:book_app/Featuers/saerch/data/repo/Search_repo_immplimantion.dart';
import 'package:book_app/Featuers/saerch/presentation/manger/Search/search_cubit.dart';
import 'package:book_app/Featuers/saerch/presentation/view/widget/saerch_view_body.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaerchView extends StatelessWidget {
  const SaerchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SearchRepoImplement(ApiService(Dio()))),
      child: const Scaffold(
        body: SafeArea(child: SaerchViewBody()),
      ),
    );
  }
}

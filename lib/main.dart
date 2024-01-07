import 'package:book_app/Featuers/home/presentation/manger/fetcher_book/fetcher_book_cubit.dart';
import 'package:book_app/Featuers/home/presentation/manger/newest_book/newest_book_cubit.dart';
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:book_app/core/utils/constants/route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                NewestBookCubit(homerepo)..fetchNewestdBooks()),
        BlocProvider(
            create: (context) =>
                FetcherBookCubit(homerepo)..fetchFeaturedBooks())
      ],
      child: MaterialApp.router(
        routerConfig: routes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primryColor,
        ),
      ),
    );
  }
}

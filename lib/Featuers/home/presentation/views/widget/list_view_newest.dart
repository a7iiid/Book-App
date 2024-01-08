// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:book_app/core/models/book/book.dart';
import 'package:book_app/Featuers/home/presentation/manger/newest_book/newest_book_cubit.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_error_widget.dart';
import 'package:book_app/Featuers/home/presentation/views/widget/custom_state_loading.dart';
import 'package:book_app/core/utils/constants/assets.dart';
import 'package:book_app/core/utils/constants/route.dart';
import 'package:book_app/core/utils/style.dart';

class ListViewNewst extends StatelessWidget {
  ListViewNewst({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookFailure) {
          return CustomErrorWidget(
            ErrorMessages: state.error,
          );
        }
        if (state is NewestBookSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(book: state.books[index]),
                );
              });
        } else {
          return const CustomStateLoading();
        }
      },
    );
  }
}

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bookdetails = book;
        GoRouter.of(context).push(routes.kDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 2.8 / 4,
                  child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: book.volumeInfo!.imageLinks!.smallThumbnail!),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextListViewItem(
                book: book,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextListViewItem extends StatelessWidget {
  const TextListViewItem({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .5,
            child: Text(
              '${book.volumeInfo!.title}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Style.titleListViewBolde22,
            ),
          ),
          const SizedBox(height: 3),
          Opacity(
            opacity: .7,
            child: Text(
              book.volumeInfo!.authors![0],
              style: Style.textstyle14,
            ),
          ),
          const SizedBox(height: 3),
          Expanded(
            child: Row(
              children: [
                Text(
                  'Free',
                  style: Style.textstyle20.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const RatingBook()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RatingBook extends StatelessWidget {
  const RatingBook({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '0',
          style: Style.textstyle16,
        ),
        SizedBox(
          width: 9,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(0)',
            style: Style.textstyle14,
          ),
        )
      ],
    );
  }
}

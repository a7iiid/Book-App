// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:book_app/core/utils/constants/assets.dart';
import 'package:book_app/core/utils/constants/route.dart';
import 'package:book_app/core/utils/style.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListViewBestSellerItem(),
          );
        });
  }
}

class ListViewBestSellerItem extends StatelessWidget {
  const ListViewBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(routes.kDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 4,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            Assets.imagesLogo,
                          ),
                          fit: BoxFit.fill),
                      color: (Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextListViewItem()
            ],
          ),
        ),
      ),
    );
  }
}

class TextListViewItem extends StatelessWidget {
  const TextListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .5,
            child: const Text(
              'The Jango Book',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Style.titleListViewBolde22,
            ),
          ),
          const SizedBox(height: 3),
          const Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Style.textstyle14,
            ),
          ),
          const SizedBox(height: 3),
          Expanded(
            child: Row(
              children: [
                Text(
                  '19.99 €',
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
          '4.8',
          style: Style.textstyle16,
        ),
        SizedBox(
          width: 9,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(2675)',
            style: Style.textstyle14,
          ),
        )
      ],
    );
  }
}

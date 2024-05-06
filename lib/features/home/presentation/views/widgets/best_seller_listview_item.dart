import 'package:bookly_app/core/utils/AppRoutes.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookmodel});

    final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookdetailsview);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.16,
        child: Row(children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:NetworkImage(bookmodel.volumeInfo.imageLinks.thumbnail))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  bookmodel.volumeInfo.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: styles.TextStyle20,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookmodel.volumeInfo.authors![0],
                  style: styles.TextStyle14.copyWith(color: Color(0xff5C5C6D)),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Free",
                      style: styles.TextStyle18.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                     bookRating( AvrageRate:"0" ,
                     CountRate: "(0)",
                     ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

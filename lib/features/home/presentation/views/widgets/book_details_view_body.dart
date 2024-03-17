import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class bookDetailsViewBody extends StatelessWidget {
  const bookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const bookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.22,
            ),
            child: const featuredListViewItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            "The Jungle Book",
            style: styles.TextStyle30,
          ),
          Opacity(
              opacity: 0.7,
              child: Text(
                "Rudyard Kipling",
                style: styles.TextStyle16.copyWith(fontStyle: FontStyle.italic),
              )),
          const SizedBox(
            height: 6,
          ),
          const bookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(
            height: 37,
          ),
          const bookActionButton(),
            const Expanded(
              child:  SizedBox(
              height: 50,
                        ),
            ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like",style: styles.TextStyle16.copyWith(fontWeight: FontWeight.bold),)),
            const SizedBox(
            height: 16,
          ),
          const similarBooksListView(),
           const SizedBox(
            height: 40,
          ),
    
        ],
      ),
    )
        )
      ],
    );
  }
}

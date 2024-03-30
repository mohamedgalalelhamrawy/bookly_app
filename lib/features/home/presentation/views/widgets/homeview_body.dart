import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custtomAppbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/features_books_lis_view.dart';
import 'package:flutter/material.dart';

class homeview_body extends StatelessWidget {
  const homeview_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: customAppbar(),
              ),
              featuredBooksListView(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Best Seller",
                  style: styles.TextStyle18,
                ),
              ),
              SizedBox(
                height: 11,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: bestSellerListView(),
        ))
      ],
    );
  }
}

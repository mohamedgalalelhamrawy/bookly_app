import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class searchViewBody extends StatelessWidget {
  const searchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          customSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Result",
            style: styles.TextStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          searchResultListView(),
        ],
      ),
    );
  }
}

class searchResultListView extends StatelessWidget {
  const searchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListViewItem(),
            );
          }),
    );
  }
}

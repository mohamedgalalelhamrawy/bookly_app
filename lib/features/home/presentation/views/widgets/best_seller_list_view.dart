import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class bestSellerListView extends StatelessWidget {
  const bestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        });
  }
}

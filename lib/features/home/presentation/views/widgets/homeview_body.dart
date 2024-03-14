import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custtomAppbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/features_books_lis_view.dart';
import 'package:flutter/material.dart';

class homeview_body extends StatelessWidget {
  const homeview_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          customAppbar(),
          featuredBooksListView(),
          SizedBox(height: 40,),
          Text("Best Seller",style: styles.TextStyle18,),
        ],
      ),
    );
  }
}




import 'package:bookly_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class bookDetailsViewBody extends StatelessWidget {
  const bookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        bookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width *0.22, ),
          child: featuredListViewItem(),
        ),
      ],
    );
  }
}

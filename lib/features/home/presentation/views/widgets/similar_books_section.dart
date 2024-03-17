
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class similarBooksSection extends StatelessWidget {
  const similarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like",style: styles.TextStyle16.copyWith(fontWeight: FontWeight.bold),)),
            const SizedBox(
            height: 16,
          ),
          const similarBooksListView(),
    ],);
  }
}
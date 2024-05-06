import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class bookDetailsSection extends StatelessWidget {
  const bookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.22,
          ),
          child: const featuredListViewItem(
              // //////
              imageURL: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDhTqh_O7DqZuSH5Ut9zz9WtkF79fX19xQaeiVz2mJdOikjbambkE6XgF5Zr4M8KeC_EDChEgb5Glz1aM_6y6-pYFFY5V0PUOXNrYlQDMj0AeMlbbNvwiwbGB8oqvK3iwLjE5twGpq_h-PG7CiQo6_v5yX4FvobyZp-frjU-FhS1kWNbtglTWtTwjtx3II/s1248/Polish_20240112_171040147.jpg",
              // //////
          ),
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
         bookRating(
          AvrageRate: "0",
          CountRate: "0",
          mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(
          height: 37,
        ),
        const bookActionButton(),
      ],
    );
  }
}

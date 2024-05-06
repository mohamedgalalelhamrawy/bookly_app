import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class bookRating extends StatelessWidget {
  const bookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.AvrageRate, required this.CountRate});
  final MainAxisAlignment mainAxisAlignment;
  final String AvrageRate ;
  final String CountRate ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffF4D559),
          size: 16,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          AvrageRate.toString(),
          style: styles.TextStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: 0.5,
            child: Text(
              CountRate.toString(),
              style: styles.TextStyle14,
            ))
      ],
    );
  }
}

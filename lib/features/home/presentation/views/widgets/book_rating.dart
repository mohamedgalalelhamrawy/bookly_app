
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class bookRating extends StatelessWidget {
  const bookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [ 
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffF4D559),),
        const SizedBox(width: 6.3,),
        const Text("4.8",style: styles.TextStyle16,),
        const SizedBox(width: 5,),
        Text("(2390)",style: styles.TextStyle14.copyWith(color: Color(0xff5C5C6D)),)
      ],
    );
  }
}
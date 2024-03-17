
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class bookRating extends StatelessWidget {
  const bookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
    final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [ 
         Icon(FontAwesomeIcons.solidStar,color: Color(0xffF4D559),size: 16,),
         SizedBox(width: 6.3,),
        Text("4.8",style: styles.TextStyle16,),
        SizedBox(width: 5,),
        Opacity(
          opacity: 0.5,
          child: Text("(2390)",style: styles.TextStyle14,))
      ],
    );
  }
}
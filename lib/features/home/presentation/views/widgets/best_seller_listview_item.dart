
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  MediaQuery.of(context).size.height *0.16,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(assetsData.testImage)
            )
          ),
        ),
      ),
      const SizedBox(width: 30,),
      Expanded(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            const Text("Harry potter and the Goblet of Fire",
               maxLines: 2,
               overflow:TextOverflow.ellipsis,
               style: styles.TextStyle20,
               ),
               const SizedBox(height: 3,),
                Text("J.K. Rowling",
               style: styles.TextStyle14.copyWith(color: Color(0xff5C5C6D)),
               ),
               const SizedBox(height: 3,),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("19.99 €",style: styles.TextStyle18.copyWith(fontWeight: FontWeight.bold),),
            
            const bookRating(),
               ],)
               
          ],
               ),
       )
        ]
      ),
    );
  }
}

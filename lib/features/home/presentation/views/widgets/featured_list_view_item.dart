import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class featuredListViewItem extends StatelessWidget {
  const featuredListViewItem({super.key, required this.imageURL});
   final String imageURL ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRRect(
        borderRadius:BorderRadius.all(Radius.circular(8)) ,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          placeholder: (context, url) {
            return Center( child: CircularProgressIndicator(),);
          },
          errorWidget: (context, url, error) {
            return Icon(Icons.error);
          },
          imageUrl: imageURL),
      )
    );
  }
}

// Container(
//         decoration: const BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(8)),
//             image: DecorationImage(
//                 fit: BoxFit.fill, image: AssetImage(assetsData.testImage))),
//       ),
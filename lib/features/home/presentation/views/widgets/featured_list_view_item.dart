import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class featuredListViewItem extends StatelessWidget {
  const featuredListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(assetsData.testImage)
          )
        ),
      ),
    );
  }
}
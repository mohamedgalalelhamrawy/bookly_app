import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class splach_view_body extends StatelessWidget {
  const splach_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetsData.logo),
        const Text(
          "read free books",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

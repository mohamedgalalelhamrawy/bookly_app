

import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
class searchViewBody extends StatelessWidget {
  const searchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ 
        SizedBox(height: 30,),
        customSearchTextField(),
      ],
    );
  }
}

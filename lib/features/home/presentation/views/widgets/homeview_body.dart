import 'package:bookly_app/features/home/presentation/views/widgets/custtomAppbar.dart';
import 'package:flutter/material.dart';

class homeview_body extends StatelessWidget {
  const homeview_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [
        customAppbar()
      ],
    );
  }
}
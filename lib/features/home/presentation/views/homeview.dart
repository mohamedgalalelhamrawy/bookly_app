
import 'package:bookly_app/features/home/presentation/views/widgets/homeview_body.dart';
import 'package:flutter/material.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: homeview_body() ,
    );
  }
}
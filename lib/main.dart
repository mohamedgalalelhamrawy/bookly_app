import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splach/presentation/views/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const bookly() );
}


class bookly extends StatelessWidget {
  const bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimarycolor
      ),
      home: splach_view(),
    );
  }
}
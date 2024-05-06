 
 import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
   const CustomErrorWidget({super.key, required this.errmessage});
  final String errmessage;
   @override
   Widget build(BuildContext context) {
     return Container(
      child: Center(child: Text(errmessage),),
     );
   }
 }
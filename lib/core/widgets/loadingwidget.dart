 
 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customLoadingWidget extends StatelessWidget {
   const customLoadingWidget({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Container( 
      child:Center(child: CircularProgressIndicator(),)
     );
   }
 }
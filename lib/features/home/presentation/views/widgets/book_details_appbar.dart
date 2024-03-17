


import 'package:flutter/material.dart';

class bookDetailsAppBar extends StatelessWidget {
  const bookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close)),
           IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
    );
  }
}
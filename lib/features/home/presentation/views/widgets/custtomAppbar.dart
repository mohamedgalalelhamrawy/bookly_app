
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class customAppbar extends StatelessWidget {
  const customAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20),
      child: Row(
        children: [
          Image.asset(assetsData.logo,height: 18,),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search,size: 24,))
        ],
      ),
    );
  }
}

//FontAwesomeIcons.magnifyingGlass
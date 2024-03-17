
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customSearchTextField extends StatelessWidget {
  const customSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          hintText: "search",
          suffixIcon: const Opacity(
            opacity: 0.7,
            child: Icon(FontAwesomeIcons.magnifyingGlass)),
          enabledBorder: searchBorder(),
          focusedBorder: searchBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder searchBorder() {
    return OutlineInputBorder( 
          borderRadius: BorderRadius.circular(16),
          borderSide:const  BorderSide(color: Colors.white)
        );
  }
}
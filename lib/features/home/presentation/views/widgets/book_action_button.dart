import 'package:bookly_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class bookActionButton extends StatelessWidget {
  const bookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: customButton(
            backgroundColor: Colors.white,
            color: Colors.black,
            text: "19.99 €",
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          )),
          Expanded(
              child: customButton(
            backgroundColor: Color(0xffE57A66),
            color: Colors.white,
            text: "Free preview",
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            fontWeight: FontWeight.normal,
          ))
        ],
      ),
    );
  }
}

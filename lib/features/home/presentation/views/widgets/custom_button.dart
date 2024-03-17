
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton(
      {super.key,
      required this.text,
      required this.color,
      required this.backgroundColor,
      required this.borderRadius,
       this.fontWeight
      });

  final String text;
  final Color color;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          child: Text(
            text,
            style: styles.TextStyle16.copyWith(
                color: color, fontWeight: fontWeight ?? FontWeight.w900 ),
          )),
    );
  }
}

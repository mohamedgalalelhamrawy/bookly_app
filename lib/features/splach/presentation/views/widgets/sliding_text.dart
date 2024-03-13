import 'package:flutter/material.dart';

class sliding_text extends StatelessWidget {
  const sliding_text({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidinganimation,
          child: const Text(
            "read free books",
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}

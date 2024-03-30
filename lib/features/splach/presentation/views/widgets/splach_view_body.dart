import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/AppRoutes.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/homeview.dart';
import 'package:bookly_app/features/splach/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class splach_view_body extends StatefulWidget {
  const splach_view_body({super.key});

  @override
  State<splach_view_body> createState() => _splach_view_bodyState();
}

class _splach_view_bodyState extends State<splach_view_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigteToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetsData.logo),
        sliding_text(slidinganimation: slidinganimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigteToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const homeview(),
        //     transition: Transition.fade, duration: ktransitionduration);
        GoRouter.of(context).push(AppRouter.khomeview);
      },
    );
  }
}

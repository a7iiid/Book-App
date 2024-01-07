import 'package:book_app/Featuers/home/presentation/views/home_view.dart';
import 'package:book_app/core/utils/constants/assets.dart';
import 'package:book_app/core/utils/constants/constant.dart';
import 'package:book_app/core/utils/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    super.initState();
    initSlideAnimated();
    NavToHome();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: sliderAnimation,
          builder: (context, child) => SlideTransition(
            position: sliderAnimation,
            child: Center(
              child: SvgPicture.asset(Assets.imagesLogo),
            ),
          ),
        ),
      ],
    );
  }

  void initSlideAnimated() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sliderAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: const Offset(0, 0))
            .animate(animationController);
    sliderAnimation.addListener(() {});
    animationController.forward();
  }

  void NavToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(const HomeView(),
      // transition: Transition.downToUp, duration: TransitionDuretion);
      GoRouter.of(context).push(routes.kHomeView);
    });
  }
}

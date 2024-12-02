import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();


    initSlidingAnimation();

    navToHome();
  }





  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        const SizedBox(
          height: 4,
        ),
        AnimatedBuilder(
          animation: animationController,
          builder: (context, child) => SlideTransition(
            position: slideAnimation,
            child: Text(
              'Read Free Books',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );




  }
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);


    animationController.forward();
  }


  void navToHome() {
    Future.delayed(
        Duration(seconds: 3),
            (){
          Get.to(()=> HomeView(),
            transition: Transition.fadeIn,
            duration: Duration(seconds: 3),
          );
        }
    );
  }
}

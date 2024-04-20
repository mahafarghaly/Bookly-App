
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>  with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {

    super.initState();
    animationController=AnimationController(

        duration: const Duration(seconds: 1), vsync: this,
    );
    slidingAnimation=Tween<Offset>(begin:const Offset(0,2),end:  Offset.zero).animate(animationController);
   animationController.forward();

  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         const Image(image: AssetImage(AssetData.logo)),
         const SizedBox(height: 5.0,),
       SlidingText(slidingAnimation: slidingAnimation)

      ],
    );
  }


}



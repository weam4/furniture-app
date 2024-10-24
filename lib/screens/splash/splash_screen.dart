import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider_ecommerce/screens/nav_bar_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
           
            splashIconSize: 300,
            backgroundColor: const Color.fromARGB(255, 249, 237, 223),
            //splashTransition: SplashTransition.fadeTransition,
            splash:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: LottieBuilder.asset("lottie/Animation - 1727291929189.json"),
                ),

              ],
            ),
             animationDuration: const Duration(seconds: 5),
            nextScreen: const MyNavBarScreen(),
          );
  }
}
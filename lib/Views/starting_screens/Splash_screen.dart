import 'package:e_learningapp/Controllers/Screen_Controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controllers/Appassets/Appimages.dart';
import '../../Controllers/constants/Appcolors.dart';
class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

Splashcontroller splashcontroller=Get.put(Splashcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bluemain,
      body: Stack(
        children: [
         Align(
             alignment: Alignment.center,
             child: Image.asset(Appimages.splashlogo,height: 120,width: 120,)),
          Align(
              alignment: Alignment.center,
              child: Image.asset(Appimages.oval,height: 310,width: 310,)),
          Align(
              alignment: Alignment.center,
              child: Image.asset(Appimages.dots,height: 294,width: 327,)),

        ],
      ),
    );
  }
}

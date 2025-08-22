import 'package:e_learningapp/Views/starting_screens/Onboarding_screen.dart';
import 'package:get/get.dart';

class Splashcontroller extends GetxController{
  @override
  void onInit(){
    super.onInit();
    Future.delayed(Duration(seconds: 3),(){
      Get.to(OnboardingScreen());
    });

  }
}
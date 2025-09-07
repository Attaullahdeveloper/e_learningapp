import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Maincontroller extends GetxController {
  final pageController=PageController();
  final currentindex=0.obs;
  var isLoading=true.obs;
  final totalpages=3;
  void nextPage() {
    if (currentindex.value < totalpages - 1) {
      pageController.animateToPage(
        currentindex.value + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
  void onPageChanged(int index) {
    currentindex.value = index;
  }
  var isChecked=false.obs;
  void toggleCheck(){
     isChecked.value=!isChecked.value;
  }
}
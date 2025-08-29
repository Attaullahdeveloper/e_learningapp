import 'package:e_learningapp/Controllers/Screen_Controllers/Maincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class CustomecheckBox extends StatelessWidget {
  CustomecheckBox({super.key});

  @override
  Maincontroller maincontroller=Get.put(Maincontroller());
  Widget build(BuildContext context) {
    return
      Obx(()=> GestureDetector(
          onTap: maincontroller.toggleCheck,
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: maincontroller.isChecked.value?Colors.green:Colors.white,
              border: Border.all( // ✅ border added
                color: Colors.grey,
                width: 2,
              ),
            ),
            

          )
        ),);
  }
}

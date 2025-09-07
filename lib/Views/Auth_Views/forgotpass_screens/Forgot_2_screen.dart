import 'dart:async';

import 'package:e_learningapp/Controllers/Screen_Controllers/Maincontroller.dart';
import 'package:e_learningapp/Controllers/constants/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../Controllers/Appassets/Appicons.dart';
import '../../../Controllers/Appassets/Appimages.dart';
import '../../../Controllers/Widgets/Buttons/Mainbutton.dart';
import '../../../Controllers/Widgets/Password_text_field.dart';
import '../../../Controllers/Widgets/Text1w.dart';
import '../../../Controllers/Widgets/Text2_widget.dart';
import 'Forgot1_screen.dart';
class Forgot2Screen extends StatelessWidget {
   Forgot2Screen({super.key});
  Maincontroller maincontroller=Get.put(Maincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundcolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ImageIcon(AssetImage(Appicons.arowleft)),
                SizedBox(width: 10,),
                Text1w(text: 'Create New Password', fontsize:18, color:Appcolors.blackcolor,fontWeight: FontWeight.w600,),],),),
          SizedBox(height: 300,),
          Padding(padding: EdgeInsets.only(left: 20),
              child:  Text1w(text: 'Create New Password', fontsize:18, color:Appcolors.blackcolor,fontWeight: FontWeight.w600,),),
       SizedBox(height: 20,),
          Align(
              alignment: Alignment.center,
              child:
              PasswordTextField()),
          SizedBox(height: 20,),
          Align(
              alignment: Alignment.center,
              child:
              PasswordTextField()),
          SizedBox(height: 40,),
          Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: (){
                    // dialogue box----------------------------------
                    Get.dialog(
                      // barrierDismissible: false,
                        barrierColor: Colors.black.withOpacity(0.6),

                        AlertDialog(
                          backgroundColor: Colors.white,
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(Appimages.forgotlogo),
                              SizedBox(height: 20,),
                              Text1w(text: 'Congratulation', fontsize: 20, color: Appcolors.blackcolor,fontWeight: FontWeight.w600,),
                              SizedBox(height: 20,),
                              Text2w(text: 'Your Account is Ready to Use.You will\n'
                                  '    redirected to Home Page in a Few \n        '
                                  '                   Seconds', fontsize: 12, color: Appcolors.subtextcolor,fontWeight: FontWeight.w700,),
                              SizedBox(height: 10,),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child:
                                  Obx(()=> maincontroller.isLoading.value?CircularProgressIndicator(
                                    strokeWidth: 3, //  thinner line
                                    valueColor: AlwaysStoppedAnimation<Color>(Appcolors.maintextcolor), //  custom color
                                    backgroundColor: Colors.grey.shade200, //  faint background ring
                                  ):SizedBox(),)
                              )


                            ],
                          ),
                        )
                    );
                    // stop the loader after 2 seconds (dialog stays)
                    Timer(const Duration(seconds: 2), () {
                      maincontroller.isLoading.value = false;
                    });
                    // auto navigation-------=============================================================
                    Timer(const Duration(seconds: 3), () {
                      maincontroller.isLoading.value=false;
                      if (Get.isDialogOpen ?? false) {
                        Get.back(); // close the dialog

                        Get.to(Forgot1Screen()); //  navigate to your screen
                      }
                    });
                  },
                  child: Mainbutton(text: 'Continue',textPadding: EdgeInsets.only(left: 110),)))
        ],
      ),
    );
  }
}

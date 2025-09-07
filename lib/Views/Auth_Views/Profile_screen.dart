import 'dart:async';

import 'package:e_learningapp/Controllers/Appassets/Appicons.dart';
import 'package:e_learningapp/Controllers/Screen_Controllers/Maincontroller.dart';
import 'package:e_learningapp/Controllers/Widgets/Buttons/Mainbutton.dart';
import 'package:e_learningapp/Controllers/Widgets/Buttons/datatextfield.dart';
import 'package:e_learningapp/Controllers/Widgets/Genderselection.dart';
import 'package:e_learningapp/Controllers/Widgets/Phonetextdiled.dart';
import 'package:e_learningapp/Controllers/Widgets/Text1w.dart';
import 'package:e_learningapp/Controllers/Widgets/Text2_widget.dart';
import 'package:e_learningapp/Views/Auth_Views/forgotpass_screens/Forgot1_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controllers/Appassets/Appimages.dart';
import '../../Controllers/Widgets/Textfield_widget.dart';
import '../../Controllers/constants/Appcolors.dart';
class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
  Maincontroller maincontroller=Get.put(Maincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ImageIcon(AssetImage(Appicons.arowleft)),
                  SizedBox(width: 10,),
                  Text1w(text: 'Fill Your Profile', fontsize:18, color:Appcolors.blackcolor,fontWeight: FontWeight.w600,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child: Image.asset(Appimages.proflogo,height: 100,width: 100,)),
            SizedBox(height: 30,),
            Align(
                alignment: Alignment.center,
                child: Datatextfield(hinttext: 'Full Name')),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child: Datatextfield(hinttext: 'Nick Name')),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: TextfieldWidget(hintText: 'Date of Birth',prefixIcon: ImageIcon(AssetImage(Appicons.calender)),),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: TextfieldWidget(hintText: 'Email',prefixIcon: Image.asset(Appimages.email),),
            ),
            SizedBox(height: 20,),
            // phone number field
            Align(
              alignment: Alignment.center,
              child: PhoneTextField(),
            ),
            // gender field--------
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Genderselection(),
            ),

            SizedBox(height:40,),
            InkWell(
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
                          Image.asset(Appimages.sucesslogo),
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
                child: Mainbutton(text: 'Continue',textPadding: EdgeInsets.only(left: 110),)),

          ],
        ),
      ),
    );
  }
}

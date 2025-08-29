import 'package:e_learningapp/Controllers/Appassets/Appimages.dart';
import 'package:e_learningapp/Controllers/Screen_Controllers/Maincontroller.dart';
import 'package:e_learningapp/Controllers/Widgets/Buttons/Mainbutton.dart';
import 'package:e_learningapp/Controllers/Widgets/Password_text_field.dart';
import 'package:e_learningapp/Controllers/Widgets/Text1w.dart';
import 'package:e_learningapp/Controllers/Widgets/Text2_widget.dart';
import 'package:e_learningapp/Controllers/Widgets/Textfield_widget.dart';
import 'package:e_learningapp/Controllers/constants/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controllers/Widgets/Customecheck_box.dart';
class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  Maincontroller maincontroller=Get.put(Maincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 110,),
            Align(
                alignment: Alignment.center,
                child: Image.asset(Appimages.logo,height: 60,width: 175,)),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text1w(text: "Let's Sign In.!", fontsize: 22, color: Appcolors.subtextcolor,fontWeight: FontWeight.w600,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text1w(text: 'Login to Your Account to Continue Your Courses', fontsize: 13, color: Appcolors.subtextcolor,fontWeight: FontWeight.w500,),
            ),
            SizedBox(height: 40,),
            // ---------------------------- Text field-----------------------------------
            Align(
                alignment: Alignment.center,
                child: TextfieldWidget(hintText: 'Email',prefixIcon: Image.asset(Appimages.email),)),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child:
                PasswordTextField()),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
        
                  Obx(()=> Checkbox(value:maincontroller.isChecked.value , onChanged: (value){
                    maincontroller.toggleCheck();
                  },
                    activeColor: Colors.green,
                    checkColor: Colors.white,)),
                  Text2w(text: 'Remember me', fontsize: 12, color: Appcolors.blackcolor,fontWeight: FontWeight.w800,),
                  Spacer(),
                 TextButton(onPressed: (){}, child:  Text2w(text: 'Forgot Password?', fontsize: 12, color: Appcolors.blackcolor,fontWeight: FontWeight.w800,),),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Align(
                alignment: Alignment.center,
                child: Mainbutton(text: 'Sign In',textPadding: EdgeInsets.only(left:110),)),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.center,
                child: Text1w(text: 'or Continue with', fontsize: 16, color: Appcolors.blackcolor,fontWeight: FontWeight.w600,)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Appcolors.whitecolor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03), // shadow color
                        spreadRadius: 2, // how much it spreads
                        blurRadius: 10,  // softness of the shadow
                        offset: Offset(4, 4), // changes position of shadow (x, y)
                      ),
                    ],
        
                  ),
                  child: Center(
                    child: Image.asset(Appimages.googleicon,height: 20,width: 20,),
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Appcolors.whitecolor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03), // shadow color
                        spreadRadius: 2, // how much it spreads
                        blurRadius: 10,  // softness of the shadow
                        offset: Offset(4, 4), // changes position of shadow (x, y)
                      ),
                    ],
        
                  ),
                  child: Center(
                    child: Image.asset(Appimages.appleicon,height: 20,width: 20,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text2w(text: "Don't have an Account?", fontsize: 12, color: Appcolors.subtextcolor,fontWeight: FontWeight.w700,),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize:Size (0,0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap, // 👈 removes extra hit area
        
                  ), child:  Text2w(text: "SiGN UP", fontsize: 12, color: Appcolors.bluemain,fontWeight: FontWeight.w700,
                    decoration:TextDecoration.underline,
                    decorationColor: Appcolors.bluemain,
                    decorationthickness: 3,
                  ),)
              ],
            )
        
        
          ],
        ),
      ),
    );
  }
}
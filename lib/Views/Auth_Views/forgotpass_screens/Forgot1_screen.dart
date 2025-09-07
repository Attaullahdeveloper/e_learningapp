import 'package:e_learningapp/Controllers/Appassets/Appimages.dart';
import 'package:e_learningapp/Controllers/Widgets/Buttons/Mainbutton.dart';
import 'package:e_learningapp/Controllers/Widgets/Text2_widget.dart';
import 'package:e_learningapp/Views/Auth_Views/forgotpass_screens/Forgot_2_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Controllers/Appassets/Appicons.dart';
import '../../../Controllers/Widgets/Text1w.dart';
import '../../../Controllers/constants/Appcolors.dart';
class Forgot1Screen extends StatelessWidget {
  const Forgot1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundcolor,
      body: Column(
        children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ImageIcon(AssetImage(Appicons.arowleft)),
                SizedBox(width: 10,),
                Text1w(text: 'Forgot Password', fontsize:18, color:Appcolors.blackcolor,fontWeight: FontWeight.w600,),],),),
          SizedBox(height: 300,),
          Text2w(text: 'Select which contacts detail should we use to\n        '
              '           Reset Your Password', fontsize: 12, color: Appcolors.subtextcolor,
              fontWeight:FontWeight.w700,),
      SizedBox(height: 40,),
      Container(
        height: 70,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appcolors.whitecolor,
        ),
      child: Row(
        children: [
    Padding(
        padding: const EdgeInsets.only(top: 4,left: 16),
        child: Image.asset(Appimages.foremail,height: 36,width: 36,)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16,left: 14),
                child: Text2w(text: 'Via email', fontsize: 12, color: Appcolors.subtextcolor,fontWeight: FontWeight.w700,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text2w(text: 'priscilla.frank26@gmail.com', fontsize: 12, color: Appcolors.subtextcolor,fontWeight: FontWeight.w900,),
              ),

            ],
          )

        ],
      )


      ),
      SizedBox(height: 20,),
      Container(
        height: 70,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appcolors.whitecolor,
        ),
      child: Row(
        children: [
    Padding(
        padding: const EdgeInsets.only(top: 4,left: 16),
        child: Image.asset(Appimages.foremail,height: 36,width: 36,)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16,left: 14),
                child: Text2w(text: 'Via SMS', fontsize: 12, color: Appcolors.subtextcolor,fontWeight: FontWeight.w700,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text2w(text: '(+91) 958-894-5529', fontsize: 12, color: Appcolors.subtextcolor,fontWeight: FontWeight.w900,),
              ),],)],)),
          SizedBox(height: 30,),
          InkWell(
              onTap: (){
                Get.to(Forgot2Screen());
              },
              child: Mainbutton(text: 'Continue',textPadding: EdgeInsets.only(left: 110),))
        ],
      ),
    );
  }
}

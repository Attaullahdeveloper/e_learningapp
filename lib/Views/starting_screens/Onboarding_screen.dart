import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:e_learningapp/Controllers/Screen_Controllers/Maincontroller.dart';
import 'package:e_learningapp/Controllers/Widgets/Buttons/nextbutton.dart';
import 'package:e_learningapp/Controllers/Widgets/Text1w.dart';
import 'package:e_learningapp/Controllers/Widgets/Text2_widget.dart';
import 'package:e_learningapp/Controllers/constants/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controllers/Widgets/Buttons/Getstartbutton.dart';
class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({super.key});
Maincontroller maincontroller=Get.put(Maincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 30.0), //  move everything up
          child: Row(
            children: [
              //--------------------------------list generated---------------------

               Padding(
                 padding: const EdgeInsets.only(left: 50),
                 child: 
                Obx(()=> Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(maincontroller.totalpages, (index){
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 10,
                        width:maincontroller.currentindex.value==index?20:10,
                        decoration: BoxDecoration(
                          color: maincontroller.currentindex.value==index?Appcolors.bluemain: Appcolors.smalllistcolor,
                          borderRadius: BorderRadius.circular(5),
                        ),);
                    }
                    )// list generate---------------------------------------
                ),)
               ),

              Spacer(),
             Obx(()=> InkWell( onTap: maincontroller.nextPage,
                 child: maincontroller.currentindex.value==2?InkWell(
                     onTap: (){

                     },
                     child: Getstartbutton(text: 'Get Started')):Nextbutton()),),
              // 🔥 Ternary: if last page → Get Started, else Next
             // Obx(()=> InkWell(
             //    onTap: ()
             //    {
             //      if (maincontroller.currentindex.value == 2) {
             //        // ✅ Last page action
             //        print("Get Started pressed");
             //        // Example: Get.offAll(() => LoginScreen());
             //      } else {
             //        maincontroller.nextPage();
             //      }
             //    },
             //    child: maincontroller.currentindex.value == 2
             //        ? Getstartbutton(text: "Get Started")
             //        : Nextbutton(),
             //  )),
               SizedBox(width: 20,),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin:Alignment.topCenter,
                end:Alignment.bottomCenter,
                colors: [
                  Appcolors.backgroundcolor,
                  Appcolors.backgroundcolor,

                                  ]
              )
            ),
          ),

          PageView(
            controller: maincontroller.pageController,
            onPageChanged: maincontroller.onPageChanged,
            children: [

              Column(
                children: [
                  SizedBox(height: 460,),

                  Text1w(text: 'Online Learning', fontsize: 20, color: Appcolors.maintextcolor,fontWeight: FontWeight.w600,),
                  SizedBox(height: 5,),
                  Text2w(text: 'We Provide Online Classes and Pre Recorded\n'
                      '                                 Lectures.!', fontsize: 11, color: Appcolors.subtextcolor,fontWeight: FontWeight.w700,),
                   ],
              ),
              Column(
                children: [

                  SizedBox(height: 460,),
                  Text1w(text: 'Learn form Anytime', fontsize: 20, color: Appcolors.maintextcolor,fontWeight: FontWeight.w600,),
                  SizedBox(height: 5,),
                  Text2w(text: 'Booked or Same the Lectures for Future', fontsize: 11, color: Appcolors.subtextcolor,fontWeight: FontWeight.w700,),
                ],
              ),
              Column(
                children: [

                  SizedBox(height: 460,),
                  Text1w(text: 'Get Online Certificate', fontsize: 20, color: Appcolors.maintextcolor,fontWeight: FontWeight.w600,),
                  SizedBox(height: 5,),
                  Text2w(text: 'Analyse you score and Track you results', fontsize: 11, color: Appcolors.subtextcolor,fontWeight: FontWeight.w700,),
                ],
              ),


            ],
          ),
//--------------------------------------------------skit button--------------------------------------------------------------

          Padding(
            padding: const EdgeInsets.only(left: 280,top: 70),
            child: TextButton(onPressed: (){}, child:
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                ColorizeAnimatedText(
                  'Skip',
                  textStyle: GoogleFonts.jost(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  colors: [
                    Appcolors.blackcolor, // Primary Blue
                    Color(0xFF00C853), // Fresh Green
                    Color(0xFFFFC107), // Amber / Yellow
                    Color(0xFF9C27B0), // Purple
                    Color(0xFFFF5722), // Deep Orange
                    Color(0xFF00BCD4), // Cyan
                    Color(0xFFE91E63), // Pink Accent
                    Color(0xFF4CAF50), // Classic Green
                    Color(0xFF673AB7), // Deep Indigo
                  ],
                  speed: const Duration(milliseconds: 500),
                ),
              ],
            ),),
          ),
        ],
      )



    );
  }
}

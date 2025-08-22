import 'package:e_learningapp/Controllers/Screen_Controllers/Maincontroller.dart';
import 'package:e_learningapp/Controllers/Widgets/Buttons/nextbutton.dart';
import 'package:e_learningapp/Controllers/Widgets/Text1w.dart';
import 'package:e_learningapp/Controllers/Widgets/Text2_widget.dart';
import 'package:e_learningapp/Controllers/constants/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

              SizedBox(width: 170,),
              InkWell(
                  onTap: maincontroller.nextPage,
                  child: Nextbutton()),

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
                  Text('kdjfljalkdfjlkd'),
                ],
              ),
              Column(
                children: [
                  Text('kdjfljalkdfjlkd'),
                ],
              ),
            ],
          ),
//skit button--------------------------------------------------------------

          Padding(
            padding: const EdgeInsets.only(left: 280,top: 70),
            child: TextButton(onPressed: (){}, child: Text1w(text: 'Skip', fontsize: 14, color: Appcolors.maintextcolor,fontWeight: FontWeight.w600,),),
          ),
        ],
      )



    );
  }
}

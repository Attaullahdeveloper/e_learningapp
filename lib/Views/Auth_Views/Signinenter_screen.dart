import 'package:e_learningapp/Controllers/Appassets/Appicons.dart';
import 'package:e_learningapp/Controllers/Appassets/Appimages.dart';
import 'package:e_learningapp/Controllers/Widgets/Buttons/Mainbutton.dart';
import 'package:e_learningapp/Controllers/Widgets/Text2_widget.dart';
import 'package:e_learningapp/Controllers/Widgets/Textfield_widget.dart';
import 'package:e_learningapp/Controllers/constants/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Controllers/Widgets/Text1w.dart';
class SigninenterScreen extends StatelessWidget {
  const SigninenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundcolor,
      body: Column(
        children: [
          SizedBox(height: 370,),
      //   Padding(padding: EdgeInsets.only(left: 30),
      //   child:
      // TextfieldWidget(hintText: 'Email',prefixIcon: Image.asset(Appimages.email),)),
      //    Image.asset(Appimages.email)
          Align(
            alignment: Alignment.center,
              child: Text1w(text: "Let's you in ", fontsize: 20, color: Appcolors.maintextcolor,fontWeight: FontWeight.w600,)),
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
              SizedBox(width: 10,),
              Align(
                  alignment: Alignment.center,
                  child: Text2w(text: 'Continue with Google', fontsize: 14, color: Appcolors.subtextcolor,fontWeight: FontWeight.w800,))
            ],
          ),
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
              child: Image.asset(Appimages.appleicon,height: 20,width: 20,),
            ),
          ),
              SizedBox(width: 10,),
              Align(
                  alignment: Alignment.center,
                  child: Text2w(text: 'Continue with Apple', fontsize: 14, color: Appcolors.subtextcolor,fontWeight: FontWeight.w800,))
            ],
          ),
          SizedBox(height: 70,),
          Text2w(text: '( Or )', fontsize:12, color: Appcolors.blackcolor,fontWeight: FontWeight.w800,),
         SizedBox(height: 20,),
          Mainbutton(text: 'Sign in with Your Account'),
          SizedBox(height: 30,),
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
    );
  }
}

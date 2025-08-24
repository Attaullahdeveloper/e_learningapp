import 'package:e_learningapp/Controllers/Appassets/Appicons.dart';
import 'package:e_learningapp/Controllers/Appassets/Appimages.dart';
import 'package:e_learningapp/Controllers/Widgets/Text2_widget.dart';
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
          SizedBox(height: 80,),
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text2w(text: '( Or )', fontsize:12, color: Appcolors.blackcolor,fontWeight: FontWeight.w800,),
          )
        ],
      ),
    );
  }
}

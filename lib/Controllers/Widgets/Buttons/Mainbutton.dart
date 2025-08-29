
import '../../constants/Appcolors.dart';
import 'package:flutter/material.dart';

import '../Text1w.dart';
class Mainbutton extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? textPadding; // ✅ new paramete
  const Mainbutton({super.key,required this.text,this.textPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52 ,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Appcolors.bluemain,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // shadow color
            spreadRadius: 2, // how much it spreads
            blurRadius: 10,  // softness of the shadow
            offset: Offset(4, 4), // changes position of shadow (x, y)
          ),
        ],

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: textPadding ?? const EdgeInsets.only(left: 25),
            child: Text1w(text: text, fontsize: 16, color: Appcolors.whitecolor,fontWeight: FontWeight.bold,),
          ),
          Spacer(),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Appcolors.whitecolor,),
            child: Center(
              child: Icon(Icons.arrow_forward,color: Appcolors.bluemain,),
            ),
          ),
          SizedBox(width: 9,),
        ],
      ),
    );
  }
}

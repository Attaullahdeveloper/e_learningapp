
import 'package:flutter/material.dart';

import '../../constants/Appcolors.dart';
import '../Text1w.dart';
class Getstartbutton extends StatelessWidget {
  final String text;
  const Getstartbutton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 145,
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
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20,),
          Text1w(text: text, fontsize: 14, color: Appcolors.whitecolor,fontWeight: FontWeight.w600,),
        Spacer(),
        Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Appcolors.whitecolor,),
        child: Center(
          child: Icon(Icons.arrow_forward,color: Appcolors.bluemain,),
        ),
      ),
          SizedBox(width: 5,),
        ],
      ),
    );
  }
}

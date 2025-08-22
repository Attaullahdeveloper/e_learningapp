
import '../../constants/Appcolors.dart';
import 'package:flutter/material.dart';

import '../Text1w.dart';
class Mainbutton extends StatelessWidget {
  final String text;
  const Mainbutton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48 ,
      width: 350,
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
          SizedBox(width: 25,),
          Text1w(text: text, fontsize: 14, color: Appcolors.whitecolor,fontWeight: FontWeight.bold,),
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
          SizedBox(width: 7,),
        ],
      ),
    );
  }
}

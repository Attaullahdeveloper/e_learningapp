import 'package:flutter/material.dart';

import '../../constants/Appcolors.dart';
class Nextbutton extends StatelessWidget {
  const Nextbutton({super.key,});

  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 50,
      width: 50,
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
      child: Center(
        child: Icon(Icons.arrow_forward,color: Colors.white,),
      ),
          );
  }
}

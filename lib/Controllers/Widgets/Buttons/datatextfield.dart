import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/Appcolors.dart';
class Datatextfield extends StatelessWidget {
 final String hinttext;
  const Datatextfield({super.key,
    required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Appcolors.whitecolor,
      ),
      child: TextFormField(
        cursorHeight: 18,
        cursorColor: Colors.grey,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
          decoration: TextDecoration.none, // 👈 removes underline from input text
        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none, // removes underline when not focused
            focusedBorder: InputBorder.none, // removes underline when focused

            hintText: hinttext,
            hintStyle: GoogleFonts.mulish(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Appcolors.subtextcolor,
              decoration: TextDecoration.none,
            ),
            contentPadding: EdgeInsets.only(top: 12,left: 15)



        ),
      ),
    );
  }
}

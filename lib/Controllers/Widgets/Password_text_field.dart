import 'package:e_learningapp/Controllers/Appassets/Appimages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/Appcolors.dart';
class PasswordTextField extends StatelessWidget {
  PasswordTextField({super.key});
TextEditingController passController=TextEditingController();
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
        controller: passController,
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

            hintText: ' Password',
            hintStyle: GoogleFonts.mulish(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Appcolors.subtextcolor,
              decoration: TextDecoration.none,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 10,left: 12),
              child: Image.asset(Appimages.pass)
            ),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 35, // default is 48 → reducing brings text closer
              minHeight: 35,
            ),
            suffixIcon: Icon(Icons.visibility_off),
            contentPadding: EdgeInsets.only(top: 20)



        ),
      ),
    );;
  }
}

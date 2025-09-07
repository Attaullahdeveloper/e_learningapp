import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/Appcolors.dart';
import '../Text1w.dart';

class Getstartbutton extends StatelessWidget {
  final String text;
  const Getstartbutton({super.key, required this.text});

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
            blurRadius: 10, // softness of the shadow
            offset: Offset(4, 4), // changes position of shadow (x, y)
          ),
        ],
      ),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
          ),
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              ColorizeAnimatedText(
                text,
                textStyle: GoogleFonts.jost(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                colors: [
                  Appcolors.whitecolor, // Primary Blue
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
          ),
          Spacer(),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Appcolors.whitecolor,
            ),
            child: Center(
              child: Icon(
                Icons.arrow_forward,
                color: Appcolors.bluemain,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}

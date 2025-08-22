import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Text2w extends StatelessWidget {
  String text;
  double fontsize;
  final FontWeight fontWeight;
  final Color color;
  Text2w({super.key,
    required this.text,
    required this.fontsize ,
    this.fontWeight = FontWeight.normal,
    required this.color });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,

      ),
    );
  }
}
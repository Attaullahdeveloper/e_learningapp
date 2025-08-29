import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Text2w extends StatelessWidget {
  String text;
  double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final double? decorationthickness;
  final double? height;
  Text2w({super.key,
    required this.text,
    required this.fontsize ,
    this.fontWeight = FontWeight.normal,
    required this.color,
  this.decoration,
  this.decorationColor,
  this.decorationthickness,
  this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mulish(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationThickness: decorationthickness,
        height: height,

      ),
    );
  }
}
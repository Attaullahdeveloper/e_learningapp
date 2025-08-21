import 'package:e_learningapp/Model/Controllers/Appassets/Appicons.dart';
import 'package:e_learningapp/Model/Controllers/constants/Appcolors.dart';
import 'package:flutter/material.dart';
class Nextbutton extends StatelessWidget {
  const Nextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Appcolors.backgroundcolor,child: ImageIcon(AssetImage(Appicons.rightarrow)),
    );
  }
}

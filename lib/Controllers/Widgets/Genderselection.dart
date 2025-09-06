import 'package:e_learningapp/Controllers/Screen_Controllers/GenderController.dart';
import 'package:e_learningapp/Controllers/constants/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Genderselection extends StatelessWidget {
  const Genderselection({super.key});

  @override
  Widget build(BuildContext context) {
    final GenderController genderController = Get.put(GenderController());
    return Container(
        height: 55,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Appcolors.whitecolor,
        ),
        child: Obx(
          () => // 👈 FIRST bracket of Obx
              DropdownButtonFormField<String>(
            value: genderController.selectedGender.value.isEmpty
                ? null
                : genderController.selectedGender.value,
            decoration: InputDecoration(
              border: InputBorder.none,
    filled: true,
    fillColor: Appcolors.whitecolor,
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide.none),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
              hintText: "Gender",
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Appcolors.subtextcolor,
              ),
            ),
            icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
            items: genderController.gender.map((String gender) {
              return DropdownMenuItem<String>(
                value: gender,
                child: Text(
                  gender,
                  style: GoogleFonts.mulish(fontSize: 14,fontWeight: FontWeight.w700,color: Appcolors.subtextcolor),
                ),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                genderController.updategender(value);
              }
            },
          ),
        ));
  }
}

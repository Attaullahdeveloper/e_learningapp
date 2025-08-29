import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Screen_Controllers/phone_controller.dart';
import '../constants/Appcolors.dart';

class PhoneTextField extends StatelessWidget {
  final PhoneController controller = Get.put(PhoneController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Appcolors.whitecolor,
      ),
      child: IntlPhoneField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 37, left: 15),
          hintText: "Enter phone number",
         hintStyle:TextStyle(
           // fontFamily: "Roboto",
           fontWeight: FontWeight.w400,
         ),
          isDense: true, //  keeps everything vertically centered
          counter:Text(''),
        ),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
        initialCountryCode: 'US', //  Default country (USA with +1)
        dropdownIcon: const Icon(Icons.arrow_drop_down, color: Colors.black),
        dropdownTextStyle: GoogleFonts.mulish(
          color: Appcolors.subtextcolor,
          fontWeight: FontWeight.w700
        ),
        flagsButtonPadding: const EdgeInsets.only(top: 12), //  shift flag+arrow+code down
        cursorColor: Colors.grey,
        cursorHeight: 18,
        onChanged: (phone) {
          controller.updatePhone(phone.number);
          controller.updateDialdcode("(+${phone.countryCode}-");
        },
        onCountryChanged: (country) {
          controller.updateDialdcode("(+${country.dialCode})-");
        },
      ),
    );
  }
}

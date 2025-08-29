import 'package:get/get.dart';

class PhoneController extends GetxController{
  // Observable phone number and dial code
  var phonenumber="".obs;
  var dialdcode="+1".obs;

// Function to update phone number
void updatePhone(String number){
  phonenumber.value=number;
}

// Function to update dial code
void updateDialdcode(String code){
  dialdcode.value=code;
}

// Function to return full number
String get fullnumber=>"$dialdcode ${phonenumber.value}";
}
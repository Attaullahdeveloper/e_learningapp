
import 'package:get/get.dart';

class GenderController extends GetxController{
  var selectedGender=''.obs;
  final List<String> gender=['Male','Female','other'];

  // update gender code
  void updategender(String gender){
    selectedGender.value=gender;
  }
}
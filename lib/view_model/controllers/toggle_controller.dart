
import 'package:get/get.dart';

class ToggleController extends GetxController {
  RxBool isToggled = false.obs;
  RxDouble togglePosition = 0.0.obs;
  double toggleWidth = 100.0; // Adjust this value as needed

  void toggle() {
    isToggled.value = !isToggled.value;
    togglePosition.value = isToggled.value ? toggleWidth : 0.0;
  }
}
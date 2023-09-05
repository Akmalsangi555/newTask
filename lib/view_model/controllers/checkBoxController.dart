

import 'package:get/get.dart';

class CustomCheckboxController extends GetxController {
  RxBool isChecked = false.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
}
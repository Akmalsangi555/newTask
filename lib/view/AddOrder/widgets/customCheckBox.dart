

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_task/res/colors/app_color.dart';

class CustomCheckboxController extends GetxController {
  RxBool isChecked = false.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
}

class CustomCheckbox extends StatelessWidget {
  final CustomCheckboxController controller = Get.put(CustomCheckboxController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.toggleCheckbox();
        print('isChecked ${controller.isChecked.value}');
      },
      child: Obx(() => Container(
        width: 50.0, // Set the desired width
        height: 50.0, // Set the desired height
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          border: Border.all(
            width: 5.0,
            color: AppColor.textFillColor,
          ),
          // color: controller.isChecked.value ? Colors.green : Colors.white,
        ),
        child: Center(
          child: controller.isChecked.value
              ? Icon(Icons.check, size: 40.0, color: Colors.white) : null,
        ),
      ),)
    );
  }
}
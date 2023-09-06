
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_task/res/colors/app_color.dart';
import 'package:new_task/view_model/controllers/checkBoxController.dart';

class CustomCheckbox extends StatelessWidget {
  final CustomCheckboxController controller = Get.put(CustomCheckboxController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            controller.toggleCheckbox();
            print('isChecked ${controller.isChecked.value}');
          },
          child: Obx(() => Container(
            width: Get.width* 0.1, // Set the desired width
            height: Get.height* 0.045, // Set the desired height
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(05),
              border: Border.all(
                width: 5.0,
                color: controller.isChecked.value ? AppColor.bgColor : AppColor.textFillColor,
              ),
              color: controller.isChecked.value ? AppColor.textFillColor : Colors.transparent,
            ),
            child: controller.isChecked.value
                ? Icon(Icons.check, size: 30.0, color: AppColor.bgColor) : null,
          ),)
        ),
      ],
    );
  }
}


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
            width: 50.0, // Set the desired width
            height: 50.0, // Set the desired height
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(05),
              border: Border.all(
                width: 5.0,
                color: controller.isChecked.value ? AppColor.bgColor : AppColor.textFillColor,
              ),
              color: controller.isChecked.value ? AppColor.textFillColor : Colors.transparent,
            ),
            child: Center(
              child: controller.isChecked.value
                  ? Icon(Icons.check, size: 40.0, color: AppColor.bgColor) : null,
            ),
          ),)
        ),
      ],
    );
  }
}

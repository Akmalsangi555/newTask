

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_task/res/colors/app_color.dart';

import 'textWidget.dart';

class DropdownController extends GetxController {
  var selectedItem = "Item 1".obs; // Using Rx to make it reactive
  var items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];
}

class DropdownWidget extends StatelessWidget {
  final DropdownController controller = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Obx(() => Container(
            height: Get.height* 0.055,
            // width: Get.width* 0.3,
            decoration: BoxDecoration(
                color: AppColor.textFillColor,
                borderRadius: BorderRadius.circular(05)
            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  icon: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.arrow_drop_down_sharp, size: 50, color: AppColor.bgColor,)),
                  value: controller.selectedItem.value,
                  onChanged: (newValue) {
                    controller.selectedItem.value = newValue!;
                  },
                  dropdownColor: AppColor.bgColor,
                  // style: TextStyle(color: AppColor.textColorLight),
                  items: controller.items.map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  )).toList(),
                ),
              ),
            ),
          )),
        ),
        SizedBox(width: Get.width* 0.18),
        textWidget('تک', 40, AppColor.textColorLight),
      ],
    );
  }
}


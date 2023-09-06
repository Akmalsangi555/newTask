
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_task/res/colors/app_color.dart';

import 'textWidget.dart';

class InputPhoneWidget extends StatelessWidget {
  InputPhoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height* 0.01),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: Get.height* 0.055,
              decoration: BoxDecoration(
                color: AppColor.textFillColor,
                borderRadius: BorderRadius.circular(05)
              ),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: '',
                    border: OutlineInputBorder(),
                  fillColor: AppColor.textFillColor
                ),

              ),
            ),
          ),
          // SizedBox(width: 30),
          SizedBox(width: Get.width* 0.115),
          textWidget('فون نمبر', 36, AppColor.textColorLight),
        ],
      ),
    );
  }
}

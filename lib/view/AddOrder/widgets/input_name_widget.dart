
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_task/res/colors/app_color.dart';

import 'textWidget.dart';

class InputNameWidget extends StatelessWidget {
  InputNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height* 0.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: Get.height* 0.05,
              decoration: BoxDecoration(
                color: AppColor.textFillColor,
                borderRadius: BorderRadius.circular(05)
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                    hintText: '',
                    border: OutlineInputBorder(),
                  fillColor: AppColor.textFillColor
                ),

              ),
            ),
          ),
          // SizedBox(width: 75,),
          SizedBox(width: Get.width* 0.2),
          textWidget('نام', 36, AppColor.textColorLight),
        ],
      ),
    );
  }
}

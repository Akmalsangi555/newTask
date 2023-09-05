
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_task/res/colors/app_color.dart';

import 'dropDownItems.dart';
import 'textWidget.dart';

class InputShopWidget extends StatelessWidget {
  InputShopWidget({Key? key}) : super(key: key);

  final DropdownController controller = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height* 0.005),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textWidget('گاڑی کی قسم', 36, AppColor.textColorLight),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                    Obx(() => Container(
                      height: Get.height* 0.06,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: AppColor.textColorLight,
                          borderRadius: BorderRadius.circular(05)
                      ),
                      child: DropdownButtonHideUnderline (
                        child: DropdownButton(
                          icon: Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(Icons.arrow_drop_down_sharp, size: 50, color: AppColor.bgColor,)),
                          value: controller.selectedItem.value,
                          onChanged: (newValue) {
                            controller.selectedItem.value = newValue!;
                          },
                          items: controller.items.map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(''),
                          )).toList(),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(width: Get.width* 0.05),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textWidget(' دکان کے پیسے', 36, AppColor.textColorLight),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                    Container(
                      height: Get.height* 0.06,
                      decoration: BoxDecoration(
                          color: AppColor.textColorLight,
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
                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: Get.height* 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Obx(() => Container(
                  height: Get.height* 0.06,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColor.textColorLight,
                      borderRadius: BorderRadius.circular(05)
                  ),
                  child: DropdownButtonHideUnderline (
                    child: DropdownButton(
                      icon: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.arrow_drop_down_sharp, size: 50, color: AppColor.bgColor,),
                      ),
                      value: controller.selectedItem.value,
                      onChanged: (newValue) {
                        controller.selectedItem.value = newValue!;
                      },
                      items: controller.items.map((item) => DropdownMenuItem(
                        value: item,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: textWidget('کب تک', 30, AppColor.bgColor),
                        ),
                        // child: Text('کب تک'),
                      )).toList(),
                    ),
                  ),
                )),
              ),
              SizedBox(width: Get.width* 0.05),
              Expanded(
                child: Obx(() => Container(
                  height: Get.height* 0.06,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColor.textColorLight,
                      borderRadius: BorderRadius.circular(05)
                  ),
                  child: DropdownButtonHideUnderline (
                    child: DropdownButton(
                      icon: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.arrow_drop_down_sharp, size: 50, color: AppColor.bgColor,)),
                      value: controller.selectedItem.value,
                      onChanged: (newValue) {
                        controller.selectedItem.value = newValue!;
                      },
                      items: controller.items.map((item) => DropdownMenuItem(
                        value: item,
                        // child: Text('کہاں تک'),
                        child: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: textWidget('کہاں تک', 30, AppColor.bgColor),
                        ),
                      )).toList(),
                    ),
                  ),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

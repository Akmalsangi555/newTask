
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_task/fontFamily.dart';
import 'package:new_task/res/colors/app_color.dart';

Widget textWidget(String text, double textFontSize, Color textColor){
  return Text(text, style: TextStyle(fontSize: textFontSize,
      fontFamily: alviNastaleeqRegular, color: textColor),);
}

addedItemsText(String text, double textFontSize, Color textColor){
  return Padding(
    padding: EdgeInsets.only(right: Get.width* 0.05),
    child: Container(
      height: Get.height* 0.15,
      width: Get.width* 0.75,
      decoration: BoxDecoration(
        color: AppColor.imageBgColor,
        borderRadius: BorderRadius.circular(05),
        border: Border.all(color: AppColor.textColorLight, width: 2.5)
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width* 0.02, vertical: Get.height* 0.005),
        child: Text(text, textAlign: TextAlign.right, style: TextStyle(fontSize: textFontSize,
            fontFamily: alviNastaleeqRegular, color: textColor),),
      ),
    ),
  );
}
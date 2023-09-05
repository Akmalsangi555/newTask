
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_task/fontFamily.dart';
import 'package:new_task/res/colors/app_color.dart';

Widget textWidget(String text, double textFontSize, Color textColor){
  return Text(text, style: TextStyle(fontSize: textFontSize,
      fontFamily: alviNastaleeqRegular, color: textColor),);
}

addedItemsText(String text, double textFontSize, Color textColor){
  return Center(
    child: Container(
      height: Get.height* 0.1,
      width: Get.width* 0.7,
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(05),
        border: Border.all(color: AppColor.textColorLight, width: 2.5)
      ),

      child: Text(text, textAlign: TextAlign.right, style: TextStyle(fontSize: textFontSize,

          fontFamily: alviNastaleeqRegular, color: textColor),),
    ),
  );
}
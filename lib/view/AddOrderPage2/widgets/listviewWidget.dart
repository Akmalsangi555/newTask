import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../res/colors/app_color.dart';
import '../../AddOrder/widgets/textWidget.dart';
import 'package:new_task/view_model/controllers/listview_controller.dart';

final ListController controller = Get.put(ListController());

listViewItemsWidget() {
  return Container(
    height: Get.height * 0.65,
    // color: Colors.red,
    child: ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: controller.dataList.length,
      itemBuilder: (context, index) {
        final data = controller.dataList[index];

        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: Get.height * 0.004,
              horizontal: Get.width * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(data.itemIcon1),
              Container(
                height: Get.height* 0.05,
                width: Get.width* 0.7,
                decoration: BoxDecoration(
                  color: AppColor.textBgColor,
                  borderRadius: BorderRadius.circular(05)
                ),
                child: Center(child: textWidget(data.itemTitle, 20, AppColor.whiteColor)),
              ),

              Image.asset(data.itemIcon2),
            ],
          ),
        );
      },
    ),
  );
}

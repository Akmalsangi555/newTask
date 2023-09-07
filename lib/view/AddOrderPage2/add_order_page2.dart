import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:new_task/fontFamily.dart';
import '../../res/assets/image_assets.dart';
import '../../res/colors/app_color.dart';
import '../../res/components/button_widget.dart';
import '../AddOrder/widgets/textWidget.dart';
import 'widgets/listviewWidget.dart';

class AddOrderPage2 extends StatefulWidget {
  const AddOrderPage2({Key? key}) : super(key: key);

  @override
  State<AddOrderPage2> createState() => _AddOrderPage2State();
}

class _AddOrderPage2State extends State<AddOrderPage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height* 0.01, horizontal: Get.width* 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textWidget('حسن گلاس', 40, AppColor.bgColor),
                        textWidget('0000', 40, AppColor.bgColor),
                        textWidget('عمیر اقبال', 40, AppColor.bgColor),

                      ],
                    ),
                    Divider(color: AppColor.bgColor, thickness: 2,),
                    // SizedBox(height: Get.height* 0.02),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SvgPicture.asset(ImageAssets.svgImage0,
                      height: Get.height* 0.04,
                      width: Get.width* 0.1,
                      colorFilter: ColorFilter.mode(AppColor.bgColor, BlendMode.srcIn),
                    ),
                        SvgPicture.asset(ImageAssets.svgImage1,
                          height: Get.height* 0.05,
                          width: Get.width* 0.1,
                        ),
                        SvgPicture.asset(ImageAssets.svgImage2,
                          height: Get.height* 0.05,
                          width: Get.width* 0.1,
                        ),
                        SvgPicture.asset(ImageAssets.svgImage3,
                          height: Get.height* 0.05,
                          width: Get.width* 0.1,
                        ),
                      ],
                    ),

                    SizedBox(height: Get.height* 0.005),

                    listViewItemsWidget(),
                    // SizedBox(height: Get.height* 0.005),

                    Container(
                      height: Get.height* 0.1,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: AppColor.imageBgColor,
                          borderRadius: BorderRadius.circular(05),
                          border: Border.all(color: AppColor.bgColor, width: 2.5)
                      ),

                      child: Text('', textAlign: TextAlign.right, style: TextStyle(fontSize: 30,
                          fontFamily: alviNastaleeqRegular, color: AppColor.whiteColor),),
                    ),

                    SizedBox(height: Get.height* 0.005),

                    ButtonWidget(title: 'واپس',
                        height: Get.height* 0.055, width: 180,
                        buttonColor: AppColor.bgColor,
                        textColor: AppColor.whiteColor,
                        textSize: 30,
                        onPressed: () {
                            Get.back();
                        }
                    ),
                    SizedBox(height: Get.height* 0.0),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

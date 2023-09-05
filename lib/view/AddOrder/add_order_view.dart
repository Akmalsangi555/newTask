import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../../res/colors/app_color.dart';
import '../../res/components/button_widget.dart';
import '../../res/routes/routes_name.dart';
import 'widgets/customCheckBox.dart';
import 'widgets/dropDownItems.dart';
import 'widgets/dukan_k_paisy.dart';
import 'widgets/input_name_widget.dart';
import 'widgets/input_phone_widget.dart';
import 'widgets/textWidget.dart';

class AddOrderView extends StatefulWidget {
  const AddOrderView({Key? key}) : super(key: key);

  @override
  State<AddOrderView> createState() => _AddOrderViewState();
}

class _AddOrderViewState extends State<AddOrderView> {

  dynamic isSwitched = true;
  bool checkBoxValue = false;
  IconData currentIcon = Icons.star; // Initial icon
  Color currentColor = Colors.yellow; // Initial color

  void toggleIconAndColor() {
    setState(() {
      if (currentIcon == Icons.star) {
        currentIcon = Icons.favorite; // Change the icon
        currentColor = Colors.red; // Change the color
      } else {
        currentIcon = Icons.star; // Change the icon back to the original
        currentColor = AppColor.bgColor; // Change the color back to the original
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height* 0.005, horizontal: Get.width* 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textWidget('حسن گلاس', 40, AppColor.textColorLight),
                        textWidget('0000', 40, AppColor.textColorLight),
                        textWidget('عمیر اقبال', 40, AppColor.textColorLight),

                      ],
                    ),
                    Divider(color: AppColor.textColorLight, thickness: 2,),
                    SizedBox(height: Get.height* 0.02),
                    InputNameWidget(),
                    InputPhoneWidget(),
                    DropdownWidget(),
                    toggleWidget(),

                    InputShopWidget(),

                    textWidget('سامان', 36, AppColor.textColorLight),

                     ButtonWidget(title: 'سامان داخل کریں',
                        width: 220,
                        buttonColor: AppColor.whiteColor,
                        textColor: AppColor.bgColor,
                        textSize: 28,
                        onPressed: () {
                          print('clicked');
                          Get.toNamed(RouteName.addOrderScreen2);
                        }
                    ),

                    SizedBox(height: Get.height* 0.01),

                    Row(
                      children: <Widget>[
                        // Container(
                        //   height: Get.height* 0.06,
                        //   width: Get.width* 0.1,
                        //   child: Theme(
                        //     data: ThemeData(unselectedWidgetColor: AppColor.textColorLight),
                        //     child: Container(
                        //       height: Get.height* 0.06,
                        //       width: Get.width* 0.1,
                        //       child: Padding(
                        //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        //         child: Checkbox(
                        //           // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        //           activeColor: AppColor.whiteColor,
                        //           checkColor: AppColor.bgColor,
                        //           value: checkBoxValue,
                        //           onChanged: (bool? value) {
                        //             setState(() {
                        //               checkBoxValue = value!;
                        //             });
                        //           },
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        CustomCheckbox(),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: Get.width* 0.05, right: Get.width* 0.01),
                            child: Container(
                              // width: Get.width* 0.5,
                              height: Get.height* 0.06,
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
                        ),
                        SizedBox(width: 70),

                      ],
                    ),
                    SizedBox(height: Get.height* 0.01),

                    addedItemsText('سامان , فریج ۔ اےسی ۔ ٹیبل, کرسی', 26, AppColor.whiteColor),
                    SizedBox(height: Get.height* 0.01),

                    ButtonWidget(title: 'آرڈر درج کریں',
                        width: 220,
                        buttonColor: AppColor.whiteColor,
                        textColor: AppColor.bgColor,
                        textSize: 28,
                        // textColor: Colors.black,
                        onPressed: () {}
                    ),
                    SizedBox(height: Get.height* 0.01),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  toggleWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterSwitch(
          height: 30,
          width: 70,
          padding: 2,
          toggleSize: 20,
          activeColor: AppColor.textColorLight,
          // inactiveColor: AppColor.bgColor,
          toggleColor: AppColor.bgColor,
          inactiveToggleColor: Colors.white,

          value: isSwitched ,
          onToggle: (value) {
            setState(() {
              isSwitched = value;
              print("object $isSwitched");

              // userDetail.covidVaccine=covid?"True":"False";
            });
          },
        ),
        SizedBox(width: 30),
        textWidget(' مقررہ قیمت', 36, AppColor.textColorLight),
      ],
    );
  }
}
